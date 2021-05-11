--local ATKDEF --atkdef
--local SPESPC --spespc
--local Pokemon --desired_species

-- Color Pokémon DV Functions

function colorDV(ATKDEF, SPESPC)
	if SPESPC == 0xAA then
		if ATKDEF == 0x2A or atkdef == 0x3A or atkdef == 0x6A or atkdef == 0x7A or atkdef == 0xAA or atkdef == 0xBA or atkdef == 0xEA or atkdef == 0xFA then
			return true
		end
	end
	return false
end -- function shiny(atkdef,spespc)

function colormaxDV(ATKDEF, SPESPC) --function altcolorflawless
	if SPESPC == 0xAA then		-- Alt. Color Flawless: SPESPC = 0xAA & ATKDEF = 0xFA
		if ATKDEF == 0xFA then	-- Alt. Color Flawless: SPESPC = 0xAA & ATKDEF = 0xFA
			return true
		end
	end
	return false
end

-- Flawless, Near-flawless Or Min-maxed Competitive Pokémon DV Functions

function maxDV(ATKDEF, SPESPC) --function flawless
	if SPESPC == 0xFF then		-- Flawless: SPESPC = 0xFF & ATKDEF = 0xFF
		if ATKDEF == 0xFF then	-- Flawless: SPESPC = 0xFF & ATKDEF = 0xFF
			return true
		end
	end
	return false
end

function ghosttypeMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then		-- Ghost-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xDE
		if ATKDEF == 0xDE then	-- Ghost-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xDE
			return true
		end
	end
	return false
end

function grasstypeMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then		-- Grass-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xEE
		if ATKDEF == 0xEE then	-- Grass-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xEE
			return true
		end
	end
	return false
end

function watertypeMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then		-- Water-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xED
		if ATKDEF == 0xED then	-- Water-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xED
			return true
		end
	end
	return false
end

function bugtypeMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then		-- Bug-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xDD
		if ATKDEF == 0xDD then	-- Bug-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xDD
			return true
		end
	end
	return false
end

function groundtypeMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then		-- Ground-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xCF
		if ATKDEF == 0xCF then	-- Ground-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xCF
			return true
		end
	end
	return false
end

function flytypeMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then		-- Fly-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xCD
		if ATKDEF == 0xCD then	-- Fly-type 70-power Hidden Power Flawless: SPESPC = 0xFF & ATKDEF = 0xCD
			return true
		end
	end
	return false
end

local Pokemon = 123
function ScytherMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then
		if ATKDEF == 0xDD or ATKDEF == 0xCC then
			return true
		end
	end
	return false
end
-- Bug- or Fighting-type 70-power Hidden Power Flawless Scyther

local Pokemon = 127
function PinsirMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then
		if ATKDEF == 0xDD then
			return true
		end
	end
	return false
end
-- Bug-type 70-power Hidden Power Flawless Pinsir

local Pokemon = 130
function GyaradosMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then
		if ATKDEF == 0xCF then
			return true
		end
	end
	return false
end
-- Ground-type 70-power Hidden Power Flawless Gyarados

local Pokemon = 132
function DittoMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then
		if ATKDEF == 0xFF then
			return true
		end
	end
	return false
end
-- Flawless Ditto

local Pokemon = 148
function DragonairMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then
		if ATKDEF == 0xCD then
			return true
		end
	end
	return false
end
-- Flying-type 70-power Hidden Power Flawless Dragonair

function RaikouMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then
		if ATKDEF == 0xFD or ATKDEF == 0xED then
			return true
		end
	end
	return false
end
-- Ice- Or Water-type 70-power Hidden Power Flawless Raikou

function EnteiMAXpowHPDV(ATKDEF, SPESPC)
	if SPESPC == 0xFF then
		if ATKDEF == 0xCC then
			return true
		end
	end
	return false
end
-- Fighting-type 70-power Hidden Power Flawless Entei
