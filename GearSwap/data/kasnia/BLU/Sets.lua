-- Fashion set for lockstyle --
sets.Fashion = {
}

-- JA Sets for Precast Function --
sets.JA = {}

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Acc', 'HighDT', 'LowDT', 'Learning', 'Exhaustible_Rings', "Perm_Rings"}
TP_index = 1

sets.TP.Acc = {
    ammo="Staunch Tathlum",
    head="Ayanmo Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Adhemar Wristbands +1",
    legs="Carmine Cuisses +1",
    feet="Carmine Greaves +1",
    neck="Asperity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Mache Earring +1",
    right_ear="Eabani Earring",
    left_ring={ name="Chirich Ring", bag="wardrobe1"},
    right_ring={ name="Chirich Ring", bag="wardrobe2"},
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
}

sets.TP.HighDT = set_combine(sets.TP.Acc, {
	-- ammo="Inlamvuyeso",
	-- ring1="Vocane ring",
	-- waist="Flume belt"
})

sets.TP.LowDT = set_combine(sets.TP.Acc, {
	neck="Veisa Collar",
    legs="Ayanmo Cosciales +1",
    -- ammo="Inlamvuyeso",
	-- ring1="Vocane ring",
})

sets.TP.Learning = set_combine(sets.TP.Acc,{
    neck="Mirage Stole",
    hands="Magus Bazubands",
})

sets.TP.Exhaustible_Rings = set_combine(sets.TP.Acc, {
    ring1 = "Facility Ring",
    ring2 = "Empress Band"
})

sets.TP.Perm_Rings = set_combine(sets.TP.Acc, {
    ring1 = "Endorsement Ring",
    ring2 = "Echad Ring"
})

-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'DT'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.Acc,{
    body="Jhakri Robe +2",
    legs="Carmine Cuisses +1",
    ring1="Warp Ring"
})


sets.Idle.DT = sets.TP.HighDT

-- Wep sets --
sets.Wep = {}
sets.Wep.index = {'Colada', 'Kaja', 'Blades', 'Mixed Martial', 'Learning'}
Wep_index = 1

sets.Wep.Colada = {
    main="Colada",
    sub="Nibiru Blade",
}

sets.Wep.Kaja = {
    main="Kaja Sword",
    sub="Nibiru Blade",
}

sets.Wep.Blades = {
    main="Nibiru Blade",
    sub="Nibiru Blade",
}

sets.Wep['Mixed Martial'] = {
    main="Kaja Sword",
    sub="Homestead Wand",
}

sets.Wep['Learning'] = {
    main="Chestnut Club",
    sub="Warp Cudgel",
}

-- WS sets --

sets.WS = {
    hands="Jhakri Cuffs +1",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},


}

sets.WS['Chant du Cygne'] = set_combine(sets.WS, {
    ammo="Jukukik Feather",
    neck="Nefarious Collar",
    hands="Adhemar Wristbands +1",
    feet="Ayanmo Gambieras +1",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
})

sets.WS.CDC = sets.WS["Chant dy Cygne"]

sets.WS['Savage Blade'] = set_combine(sets.WS, {
})

sets.WS['Requiescat'] = set_combine(sets.WS, {
    head="Ayanmo Zucchetto +2",
    body="Jhakri Robe +2",
    hands="Jhakri Cuffs +1",
    legs="Jhakri Slops +1",
    feet="Jhakri Pigaches +1"
})

-- Precast Spell sets --

sets.FC = {
	head="Haruspex Hat",
	body="Foppish Tunica",
    hands="Taeon Gloves",
    legs="Ayanmo Cosciales +1",
    feet="Carmine Greaves +1",
    back={ name="Rosmerta's Cape", augments={'Fast Cast +10%',}}
}

sets.FC.Cure = set_combine(sets.FC, {
})

-- Magic sets --
sets.Magical = set_combine(sets.TP.Acc, {
})

sets.Healing = set_combine(sets.Magical, {
})

sets.PhysMag = set_combine(sets.TP.Acc, {
})

sets.SkillBuff = set_combine(sets.Magical, {
})
