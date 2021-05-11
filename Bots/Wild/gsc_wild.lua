--Edit parameters in this section
local desired_species = -1 -- the desired pokemon dex number / -1 for all species/encounter slots
--local desired_species = 92 -- Gastly
--local desired_species = 123 -- Scyther
--local desired_species = 127 -- Pinsir
--local desired_species = 130 -- Gyarados
--local desired_species = 132 -- Ditto
--local desired_species = 183 -- Marill
--local desired_species = 246 -- Larvitar
--End of parameters

local atkdef
local spespc
local species

local enemy_addr
local version = memory.readbyte(0x141)
local region = memory.readbyte(0x142)
if version == 0x54 then
    if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
        print("EUR Crystal detected")
        enemy_addr = 0xd20c
    elseif region == 0x45 then
        print("USA Crystal detected")
        enemy_addr = 0xd20c
    elseif region == 0x4A then
        print("JPN Crystal detected")
        enemy_addr = 0xd23d
    end
elseif version == 0x55 or version == 0x58 then
    if region == 0x44 or region == 0x46 or region == 0x49 or region == 0x53 then
        print("EUR Gold/Silver detected")
        enemy_addr = 0xd0f5
    elseif region == 0x45 then
        print("USA Gold/Silver detected")
        enemy_addr = 0xd0f5
    elseif region == 0x4A then
        print("JPN Gold/Silver detected")
        enemy_addr = 0xd0e7
    elseif region == 0x4B then
        print("KOR Gold/Silver detected")
        enemy_addr = 0xd1b2
    end
else
    print(string.format("Unknown version, code: %4x", version))
    print("Script stopped")
    return
end

local dv_flag_addr = enemy_addr + 0x21
local species_addr = enemy_addr + 0x22

function shiny(atkdef,spespc)
    if spespc == 0xAA then
        if atkdef == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then
            return true
        end
    end
    return false
end
--function shiny(atkdef,spespc) --function colorhighestDV(ATKDEF, SPESPC) --function altcolorflawless
--    if spespc == 0xAA then     -- Alt. Color Flawless: SPESPC = 0xAA & ATKDEF = 0xFA
--        if atkdef == 0xFA then -- Alt. Color Flawless: SPESPC = 0xAA & ATKDEF = 0xFA
--            return true
--        end
--    end
--    return false
--end
--function shiny(atkdef,spespc) --function maxDV(ATKDEF, SPESPC) --function flawless
--    if spespc == 0xFF then     -- Flawless: SPESPC = 0xFF & ATKDEF = 0xFF
--        if atkdef == 0xFF then -- Flawless: SPESPC = 0xFF & ATKDEF = 0xFF
--            return true
--        end
--    end
--    return false
--end
--function shiny(atkdef,spespc)
--    if spespc == 0xFF then
--        if atkdef == 0xCF then
--            return true
--        end
--    end
--    return false
--end -- Ground-type 70-power Hidden Power Flawless Gyarados
--function shiny(atkdef,spespc)
--    if spespc == 0xFF then
--        if atkdef == 0xDD then
--            return true
--        end
--    end
--    return false
--end -- Bug- or Fighting-type 70-power Hidden Power Flawless Scyther
--function shiny(atkdef,spespc)
--    if spespc == 0xFF then
--        if atkdef == 0xDD then
--            return true
--        end
--    end
--    return false
--end -- Bug-type 70-power Hidden Power Flawless Pinsir

 
local state = savestate.create()
while true do
    savestate.save(state)
    i = 0
    while memory.readbyte(species_addr) == 0 do
        if i <15 then
            joypad.set(1, {left=false})
            joypad.set(1, {right=true})
        else
            joypad.set(1, {right=false})
            joypad.set(1, {left=true})
        end
        emu.frameadvance()
        i = (i+1)%32
    end
    species = memory.readbyte(species_addr)
    print(string.format("Species: %d", species))

    if desired_species > 0 and desired_species ~= species then
        savestate.load(state)
    else
        while memory.readbyte(dv_flag_addr) ~= 0x01 do
            emu.frameadvance()
        end
        
        atkdef = memory.readbyte(enemy_addr)
        spespc = memory.readbyte(enemy_addr + 1)
        print(string.format("Atk: %d Def: %d Spe: %d Spc: %d", math.floor(atkdef/16), atkdef%16, math.floor(spespc/16), spespc%16))

        if shiny(atkdef, spespc) then
            print("Shiny found!!")
            savestate.save(state)
            vba.pause()
            break
        else
            savestate.load(state)
        end
    end
    emu.frameadvance()
end
