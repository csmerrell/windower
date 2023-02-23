-- Fashion set for lockstyle --
sets.Fashion = {
	main="Mighty Sword",
	head="Erilaz Galea",
	body="Erilaz Surcoat +1",
	hands="Turms Mittens",
	legs="Runeist Trousers +1",
	feet="Turms Leggings"
}

-- JA Sets for Precast Function --
sets.JA = {}

sets.JA['Elemental Sforzo'] = {
	body="Futhark Coat +1"
}
sets.JA['Vallation'] = {
	body="Runeist Coat +1",
	legs="Futhark Trousers"
}
sets.JA['Valiance'] = {
	body="Runeist Coat +1",
	legs="Futhark Trousers"
}
sets.JA['Swordplay'] = {
	hands="Futhark Mitons"
}
sets.JA['Battuta'] = {
	head="Futhark Bandeau"
}

sets.JA['Lunge'] = {
	head="Dampening tam",
	neck="Atzintli necklace",
	ear1="Friomisi Earring",
	body="Samnuha coat",
	hands="Nilas Gloves",
	ring1="Locus Ring",
	ring2="Fenrir Ring",
	waist="Hachirin-no-obi",
	legs="Rawhide trousers",
	feet="Herculean boots"
}

sets.JA['Swipe'] = sets.JA['Lunge']

sets.JA['Embolden'] = {
	back="Evasionist's Cape"
}

sets.JA['Vivacious Pulse'] = {
	legs="Runeist Trousers +1"
}


-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'MaxDT', 'MidDT',  'LowDT', 'Glass', 'CP'}
TP_index = 3

sets.TP.MaxDT = {
	ammo="Yamarang",
	head="Ayanmo zucchetto +2",
	neck="Veisa Collar",
	ear1="Sherida earring",
	ear2="Brutal earring",
	body="Erilaz Surcoat +1",
	hands="Turms Mittens",
	ring1="Vocane Ring",
	ring2="Moonbeam Ring",
	back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Parrying rate+5%',}},
	waist="Flume Belt",
	legs="Erilaz Leg Guards +1",
	feet="Turms Leggings"
}

sets.TP.MidDT = {
	ammo="Yamarang",
	head="Ayanmo zucchetto +2",
	neck="Asperity Necklace",
	ear1="Sherida earring",
	ear2="Brutal earring",
	body="Ayanmo Corazza +2",
	hands="Adhemar Wristbands +1",
	ring1="Vocane Ring",
	ring2="Moonbeam Ring",
	back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Parrying rate+5%',}},
	waist="Ioskeha Belt",
	legs="Meg. Chausses +2",
	feet="Turms Leggings"
}

sets.TP.LowDT = {
	ammo="Yamarang",
	head="Aya. Zucchetto +2",
	neck="Anu Torque",
	ear1="Sherida earring",
	ear2="Brutal earring",
	body="Ayanmo Corazza +2",
	hands="Adhemar Wristbands +1",
	ring1="Epona's Ring",
	ring2="Ilabrat Ring",
	back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Parrying rate+5%',}},
	waist="Ioskeha Belt",
	legs="Samnuha Tights",
	feet="Turms Leggings"
}

sets.TP.Glass = {
	ammo="Yamarang",
	head="Aya. Zucchetto +2",
	neck="Anu Torque",
	ear1="Sherida earring",
	ear2="Brutal earring",
	body="Ayanmo Corazza +2",
	hands="Adhemar Wristbands +1",
	ring1="Epona's Ring",
	ring2="Ilabrat Ring",
	back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Parrying rate+5%',}},
	waist="Ioskeha Belt",
	legs="Samnuha Tights",
	feet={ name="Herculean Boots", augments={'"Triple Atk."+4','Accuracy+12','Attack+6',}}
}

if player.sub_job == "SAM" then
	sets.TP.LowDT.neck = "Anu Torque"
	sets.TP.Glass.neck = "Anu Torque"
	sets.TP.LowDT.head = "Adhemar bonnet +1"
	sets.TP.Glass.head = "Adhemar bonnet +1"
end


sets.TP.CP = set_combine(sets.TP.LowDT,{
	hands="Turms Mittens",
	back="Mecistopins mantle",
	feet="Turms Leggings"
})

-- Enmity set --

sets.Enmity = {
	ammo="Aqreaqa Bomblet",
	head="Despair Helm",
	neck="Unmoving Collar +1",
	ear1="Friomisi Earring",
	body="Erilaz surcoat +1",
	gloves="Nilas Gloves",
	ring1="Provocare Ring",
	ring2="Odium Ring",
	back={ name="Ogma's cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Enmity+10',}},
	waist="Warwolf Belt",
	legs="Erilaz Leg Guards +1",
	feet="Rager Ledelsans +1"
}

--  Weapon sets --
sets.Wep = {}
sets.Wep.index = {'GSdd', 'GSdt', 'GSme', 'DW'}
Wep_index = 1

sets.Wep.GSdd = {
	main="Zulfiqar",
	sub="Nepenthe Grip",
	type="GS"
}
sets.Wep.GSdt = {
	main="Bidenhander",
	sub="Mensch Strap",
	type="GS"
}
sets.Wep.GSme = {
	main="Aettir",
	sub="Mensch Strap",
	type="GS"
}
sets.Wep.DW = {
	main="Vampirism",
	type = "Sword",
	SubWep = {
		sub="Fettering Blade"
	}
}

sets.Wep.NonFashion = {
	main="Bidenhander"
}

-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'DT', 'CP', 'Cleave'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.MaxDT,{
	ammo="Homiliary",
	head="Erilaz Galea",
	ear1="Infused Earring",
	body="Runeist Coat +1",
	hands="Turms Mittens",
	ring1="Warp Ring",
	ring2="Capacity Ring",
	feet="Turms Leggings"
})

sets.Idle.MaxDT = {
	ammo="Amar cluster",
	head="Ayanmo zucchetto +2",
	neck="Veisa Collar",
	ear1="Sherida earring",
	ear2="Brutal earring",
	body="Ayanmo Corazza +2",
	hands="Turms Mittens",
	ring1="Vocane Ring",
	ring2="Moonbeam Ring",
	back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Parrying rate+5%',}},
	waist="Flume Belt",
	legs="Meg. Chausses +2",
	feet="Turms Leggings"
}

sets.Idle.CP = set_combine(sets.Idle.General, {
	ring2="Facility Ring",
	ring1="Capacity Ring"
})

sets.Idle.Cleave = set_combine(sets.Idle.MaxDT, {
	neck="Unmoving Collar +1",
	body="Emet Harness",
	hands="Turms Mittens",
	ring1="Vocane Ring",
	ring2="Moonbeam Ring",
	back="Aptitude Mantle",
	feet="Turms Leggings"
})

-- WS sets --

sets.WS = {
	ammo="Seething Bomblet",
	head="Ayanmo Zucchetto +2",
	neck="Clotharius Torque",
	ear1="Sherida earring",
	ear2="Brutal earring",
	body="Ayanmo corazza +2",
	hands="Meghanada Gloves +2",
	ring1="Epona's Ring",
	ring2="Ifrit ring",
	back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Parrying rate+5%',}},
	waist="Ioskeha belt",
	legs="Samnuha tights",
	feet={ name="Herculean Boots", augments={'"Triple Atk."+4','Accuracy+12','Attack+6',}}
}

sets.WS["Resolution"] = set_combine(sets.WS, {
	neck="Breeze Gorget",
	hands="Adhemar wristbands +1",
	waist="Breeze belt",
})

sets.WS["Dimidiation"] = set_combine(sets.WS, {
	head="Dampening Tam",
	ring2="Ilabrat Ring"
})

sets.WS["Savage Blade"] = set_combine(sets.WS, {
	waist="Iosheka belt"
})

sets.WS["Swift Blade"] = sets.WS["Savage Blade"]

-- Precast Spell sets --

sets.precast = {}
sets.precast.FC = {}

sets.precast.FC = {
	head="Runeist Bandeau",
}

sets.precast.FC.Enhancing = set_combine(sets.precast.FC,{
	head="Erilaz Galea",
	neck="Enhancing Torque",
	hands="Runeist Mitons",
	back="Merciful Cape",
	legs="Futhark Trousers +1"
})


sets.precast.FC.Divine = set_combine(sets.precast.FC,{
	legs="Runeist Trousers +1"
})

--Utility Sets--
sets.Utility = {}

sets.Utility.Trust = {
	head="Meghanada Visor +1",
	body="Futhark Coat +1",
	hands="Turms Mittens",
	legs="Samnuha Tights",
	feet="Turms Leggings"
}

sets.Utility.Phalanx = set_combine(sets.precast.FC.Enhancing,{
	head="Futhark Bandeau"
})
