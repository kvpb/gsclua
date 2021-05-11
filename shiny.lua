function shiny(atkdef,spespc)
    if spespc == 0xAA then
        if atkdef == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then
            return true
        end
    end
    return false
end
-- original shiny function

function shiny(atkdef,spespc)
    if spespc == 0xAA then
        if atkdef == 0xFA then
            return true
        end
    end
    return false
end
-- highest DV shiny function

-- function shiny(atkdef,spespc)
-- if atkdef == 0xFA and spespc == 0xAA then
--     return true
-- end -- highest IV shiny spread
-- elseif spespc == 0xAA then
--     if atkdef == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then
--         return true
--     end
-- end -- near-highest IV shiny spread [help me to bar those that are lesser than 1 step less than the maximum values for this criteria]
-- elseif atkdef == 0xFF and spespc == 0xFF then
--     return true
-- end -- flawless IV spread
-- elseif spespc == ${value} then
--     if atkdef == ${value} or ${value} then
--         return true
--     end
-- end -- near-highest IV spread [help me to add the necessary values; we need all those from 14 to 15 for each stat]
-- return false
-- end

function shiny(atkdef,spespc)
    if spespc == 0xFF then
        if atkdef == 0xFF then
            return true
        end
    end
    return false
end
-- flawless DV ~~shiny~~ [well, not anymore, then] function

function shiny(atkdef,spespc)
    if spespc == 0xAA then
        if atkdef == 0xBA or atkdef == 0xFA then
            return true
        end
    end
    return false
end
-- highest or near-highest (second possible best) DV shiny function

function shiny(atkdef,spespc)
    if atkdef == 0xFF then
        if spespc == 0xFF or spespc == 0xFE then
            return true
        end
    end
    return false
end
-- flawless or near-flawless DV function

function shiny(atkdef,spespc)
    if spespc == 0xAA then
        if atkdef == 0xFA then
            return true
        end
    elseif spespc == 0xFF then
        if atkdef == 0xFF then
            return true
        end
    end
    return false
end
-- highest DV shiny or 5 DV function

function shiny(atkdef,spespc)
    if spespc == 0xAA then
        if atkdef == 0xBA or atkdef == 0xFA then
            return true
        end
    elseif atkdef == 0xFF then
        if spespc == 0xFF or spespc == 0xFE then
            return true
        end
    end
    return false
end
-- highest or near-highest DV shiny or flawless or near-flawless DV function

-- Notes:
--  -  More relevant IV spreads were added.
--  -  Near-highest and near-flawless DV spreads are added for more flexibility, in case you don't want to wait a day and half at 1000% speed.
--  -  In G2, DV except the HP one are stored on 2 bytes. The 1st byte encodes the ATK and DEF DV. The 2nd encodes the SPE and SPC ones. The HP DV is calculated from the other ones through the formula DV_HP = 8 * ( DV_ATK & 1 ) + 4 * ( DV_DEF & 1 ) + 2 * ( DV_SPE & 1 ) + ( DV_SPC & 1 ).
--  -  In G1 and G2, SPA and SPD share the same SPC DV. 
--  -  In G2, the highest possible DV of a shiny pokémon are 8/15/10/10/10 (HP: 8; ATK: 15; DEF: 10; SPE: 10; SPC: 10), and the second-highest, 8/11/10/10/10.
--  -  In G2, due to how DV are calculated, flawless DV are 15/15/15/15/15, and the highest near-flawless, 14/15/15/15/14. Since the minimum value of any DV _including the HP one_ mustn't be lower than 14, 14/15/15/15/14 is the only true near-flawless DV spread.

-- Credits:
--  -  kvpb with BruceMan, Parzival, lincoln & Gudf from PokemonRNG
