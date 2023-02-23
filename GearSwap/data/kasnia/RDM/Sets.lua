-- Fashion set for lockstyle --
sets.Fashion = {
}

-- JA Sets for Precast Function --
sets.JA = {}

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Acc', 'HighDT', 'LowDT'}
TP_index = 1

sets.TP.Acc = {
--     ammo="Amar cluster",
--     head="Precision Headband",
--     neck="Armiger's Lace",
--     ear1="Megasco Earring",
--     ear2="Minuet Earring",
--     body="Narasimha's Vest",
--     hands="Custom F Gloves",
--     ring1="Flame Ring",
--     ring2="Warp Ring",
--     back="Cuchulain's Mantle",
--     waist="Speed Belt",
--     legs="Custom Pants",
--     feet="Adilio Boots"
}

sets.TP.HighDT = set_combine(sets.TP.Acc, {
	-- ammo="Inlamvuyeso",
	-- ring1="Vocane ring",
	-- neck="Veisa collar",
	-- waist="Flume belt"
})

sets.TP.LowDT = set_combine(sets.TP.Acc, {
	-- ammo="Inlamvuyeso",
	-- ring1="Vocane ring",
})

-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'DT'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.Acc,{
})

sets.Idle.DT = sets.TP.HighDT

-- Wep sets --
sets.Wep = {}
sets.Wep.index = {'Main'}
Wep_index = 1

sets.Wep.Main = {
}

-- WS sets --

sets.WS = {
}

sets.WS['Chant du Cygne'] = set_combine(sets.WS, {
})

sets.WS['Savage Blade'] = set_combine(sets.WS, {
})

-- Precast Spell sets --

sets.FC = {
--     head="Warlock's Chapeau"
}

sets.FC.Cure = set_combine(sets.FC, {
})

-- Magic sets --
sets.Magical = {
--     waist="Salire's Belt"
}

sets.Healing = set_combine(sets.Magical, {
})

sets.PhysMag = {

}

sets.SkillBuff = {
}
