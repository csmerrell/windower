-- Fashion set for lockstyle --
sets.Fashion = {
	head="Lanun Tricorne",
	body="Commodore Frac",
	hands="Navarch's Gants +1",
	legs="Pursuer's pants",
	feet="Meghanada Jambeaux +1"
}

-- JA Sets for Precast Function --
sets.JA = {}

sets.JA['Snake Eye'] = {
	legs="Lanun Trews"
}

sets.JA['Phantom Roll'] = {
	head="Lanun Tricorne",
	hands="Navarch's Gants +1",
	ring1="Barataria Ring",
	back="Camulus's Mantle"
}

sets.JA['Quick Draw'] = {
	ammo="Divine Bullet",
	head="Pixie Hairpin +1",
	body="Meg. Cuirie +1",
	hands="Meg. Gloves +1",
	legs="Meg. Chausses +2",
	feet="Chausser's Bottes",
	neck="Sanctity Necklace",
	waist="Yemaya Belt",
	left_ear="Ishvara Earring",
	right_ear="Friomisi Earring",
	left_ring="Garuda Ring",
	right_ring="Garuda Ring",
}

sets.JA['Dark Shot'] = sets.JA['Quick Draw']
sets.JA['Light Shot'] = sets.JA['Quick Draw']
sets.JA['Fire Shot'] = sets.JA['Quick Draw']
sets.JA['Ice Shot'] = sets.JA['Quick Draw']
sets.JA['Thunder Shot'] = sets.JA['Quick Draw']
sets.JA['Earth Shot'] = sets.JA['Quick Draw']
sets.JA['Water Shot'] = sets.JA['Quick Draw']
sets.JA['Wind Shot'] = sets.JA['Quick Draw']

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Glass', 'DT', 'RAcc', 'CP'}
TP_index = 1

sets.TP.Glass = {
    head="Mummu Bonnet +2",
    body="Meg. Cuirie +1",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+26','"Triple Atk."+3','AGI+8','Attack+11',}},
    neck="Clotharius Torque",
    waist="Grunfeld Rope",
    left_ear="Steelflash Earring",
    right_ear="Bladeborn Earring",
    left_ring="Petrov Ring",
    right_ring="Rajas Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Damage taken-5%',}},
}

sets.TP.RAcc = set_combine(sets.TP.Glass,{
	head="Pursuer's Beret",
	hands="Meghanada gloves +2",
	neck="Loricate Torque",
	legs="Meghanada cuisses +2",
	feet="Meghanada jambeaux +1",
	waist="Yemaya belt",
    left_ear="Enervating Earring",
	right_ear="Volley Earring"
})

sets.TP.DT = set_combine(sets.TP.Glass, {
	neck="Loricate Torque",
	legs="Meghanada cuisses +2"
})

sets.TP.CP = set_combine(sets.TP.Glass,{
	right_ring="Capacity Ring",
	back="Mecistopins mantle",
})


-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'CP', 'Cleave'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.MaxDT,{
	legs="Carmine Cuisses +1",
	ring1="Warp Ring",
	ring2="Capacity Ring",
	back="Mecistopins mantle"
})

sets.Idle.CP = set_combine(sets.Idle.General, {
	ring2="Facility Ring",
	ring1="Capacity Ring",
	back="Mecistopins mantle"
})

sets.Idle.Cleave = set_combine(sets.Idle.General, {
	neck="Unmoving Collar +1",
	body="Emet Harness",
	hands="Turms Mittens",
	ring1="Vocane Ring",
	ring2="Moonbeam Ring",
	back="Aptitude Mantle",
	feet="Turms Leggings"
})

-- WS sets --
sets.WS = {}
sets.WS.index = { "Savage Blade", "Last Stand", "Leaden Salute", "Wildfire"}
WS_index = 1

sets.WS["Savage Blade"] = set_combine(sets.TP.Glass, {
	-- left_ear="Ishvara Earring"
	head="Mummu Bonnet +2",
	hands="Meg. gloves +2",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	ear1="Steelflash earring",
	ear2="Bladeborn earring",
	feet={ name="Herculean Boots", augments={'Accuracy+27','Weapon skill damage +4%','STR+8','Attack+7',}},
})
sets.WS.SB = sets.WS["Savage Blade"]

sets.WS["Last Stand"] = set_combine(sets.WS, {
	ammo="Titanium Bullet"
})

sets.WS["Leaden Salute"] = set_combine(sets.WS, {
	ammo="Orichalc. Bullet",
    head="Pixie Hairpin +1",
    body="Meg. Cuirie +1",
    hands="Meg. Gloves +1",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Accuracy+27','Weapon skill damage +4%','STR+8','Attack+7',}},
    neck="Sanctity Necklace",
    waist="Yemaya Belt",
    left_ear="Ishvara Earring",
    right_ear="Friomisi Earring",
    right_ring="Dingir Ring",
    left_ring="Garuda Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
})

sets.WS.LS = sets.WS["Leaden Salute"]

sets.WS["Wildfire"] = set_combine(sets.WS["Leaden Salute"], {
	head="Pursuer's Beret"
})

-- Wep Sets --
sets.Wep = {}
sets.Wep.index = {'Acc', 'MidAcc', 'MAB', 'Ranged', 'Single'}
Wep_index = 1

sets.Wep.Acc = {
    main="Hep. Sapara +1",
    sub="Blurred Knife +1",
    range={ name="Anarchy +2", augments={'Delay:+60','TP Bonus +1000',}},
}
sets.Wep.MidAcc = {
	main="Hep. Sapara +1",
	sub="Hepatizon Rapier"
}
sets.Wep.MAB = {
	main="Hepatizon Rapier",
	sub="Hepatizon Rapier"
}
sets.Wep.Ranged = {
	main="Lanun Knife",
	sub="Hepatizon Rapier",
	ranged="Molybdosis",
	ammo="Divine Bullet"
}
sets.Wep.Single = {
	main="Hep. Sapara +1"
}

-- Precast Spell sets --

sets.precast = {}

--Utility Sets--
sets.Utility = {}

sets.Utility.Trust = {
	head="Meghanada Visor +1",
	body="Meghanada Cuirie +1",
	hands="Meghanada Gloves +2",
	legs="Meghanada Chausses +1",
	feet="Meghanada Jambeaux +1"
}
