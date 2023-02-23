-- Fashion set for lockstyle --
sets.Fashion = {
	head="Charis Tiara",
	body="Dinner Jacket",
	legs="Samnuha Tights",
	feet="Etoile Shoes"
}

-- JA Sets for Precast Function --
sets.JA = {}
sets.JA.Waltz = {
	head="Etoile tiara",
	feet="Rawhide boots"
}

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Acc',  'Hybrid', 'Glass', 'CP'}
TP_index = 1

sets.TP.Acc = {
	ammo="Yamarang",
	head="Dampening tam",
	neck="Anu Torque",
	ear1="Bladeborn Earring",
	ear2="Steelflash Earring",
	body="Rawhide vest",
	hands="Adhemar Wristbands +1",
	ring1="Rajas Ring",
	ring2="Epona's Ring",
	back="Senuna's mantle",
	waist="Windbuffet belt",
	legs="Samnuha Tights",
	feet={ name="Herculean Boots", augments={'"Triple Atk."+4','Accuracy+12','Attack+6',}},
}

sets.TP.Hybrid = set_combine(sets.TP.Acc,{
	ring1="Vocane Ring",
	ring2="Moonbeam ring"
})


sets.TP.Glass = set_combine(sets.TP.Acc,{
	neck="Adhemar Bonnet +1",
	legs="Samnuha tights"
})

sets.TP.CP = set_combine(sets.TP.Acc,{
	neck="Asperity necklace",
	ring1="Rajas ring",
	legs="Samnuha tights",
	back="Aptitude mantle"
})

-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.Glass,{
	ring1="Warp ring",
	ring2="Capacity ring"
})

-- Wep sets --
sets.Wep = {}
sets.Wep.index = {'Main', 'Alt'}
Wep_index = 1

sets.Wep.Main = {
	main={ name="Taming Sari", augments={'STR+5','DEX+6','DMG:+10',}},
	sub={ name="Taming Sari", augments={'STR+6','DEX+7',}},
}

sets.Wep.Alt = {
	main={ name="Taming Sari", augments={'STR+6','DEX+7',}},
	sub={ name="Taming Sari", augments={'STR+5','DEX+6','DMG:+10',}},
}


-- WS sets --

sets.WS = {
	ammo="Jukukik feather",
	head="Meghanada visor +1",
	neck="Shadow gorget",
	ear1="Ishvara earring",
	ear2="Tati earring",
	body="Meghanada cuirie +1",
	hands="Meghanada gloves +1",
	ring1="Ramuh ring",
	ring2="Ramuh ring",
	back="Senuna's Mantle",
	waist="Shadow belt",
	legs="Samnuha tights",
	feet="Herculean boots"
}

-- Precast Spell sets --

sets.precast = {}

--Phalanx Utility--
sets.Utility = {}
