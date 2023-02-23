-- Fashion set for lockstyle --
sets.Fashion = {
	head="Emicho Coronet",
	body="Monster Jackcoat",
	hands="Emicho Gauntlets",
	legs="Meghanada Chausses +1",
	feet="Monster Boots"
}


-- JA Sets for Precast Function --
sets.JA = {}

sets.JA['Sic'] = {
	legs="Desultor Tassets",
	hands="Nukumi manoplas"
}
sets.JA['Ready'] = sets.JA['Sic']

sets.JA.MagicReady = {
	neck="Adad Amulet"
}

sets.JA['Reward'] = {
	body="Monster Jackcoat",
	feet="Monster gaiters"
}
sets.JA['Reward'].theta = {
	ammo="Pet Food Theta"
}
sets.JA['Reward'].zeta = {
	ammo="Pet Food Zeta"
}

sets.JA['Charm'] = set_combine(sets.JA['Reward'], {
	hands="Ankusa Gloves +1"
})

sets.JA['Call Beast'] = {
	hands="Ankusa Gloves +1"
}

sets.JA['Bestial Loyalty'] = sets.JA['Call Beast']


-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Main', 'DT', 'CP'}
TP_index = 1

sets.TP.Main = {
	ammo="Amar Cluster",
	head="Emicho Coronet",
	neck="Asperity Necklace",
	ear1="Steelflash Earring",
	ear2="Handler's Earring",
	body="Despair Mail",
	hands="Emicho Gauntlets",
	ring1="Vocane Ring",
	ring2="Gelatinous Ring +1",
	back="Iximulew Cape",
	waist="Flume belt",
	legs="Despair cuisses",
	feet="Valourous greaves"
}

sets.TP.DT = {
	head="Meghanada Visor +1",
	body="Meg. Cuirie +1",
	hands="Meg. Gloves +2",
	legs="Meg. Chausses +1",
	feet="Meg. Jam. +1",
	waist="Flume Belt",
	ring1="Vocane Ring",
	ring2="Moonbeam Ring",
	neck="Veisa Collar"
}

sets.TP.CP = set_combine(sets.TP.DT,{
	back="Aptitude mantle"
})

--  Weapon sets --
sets.Wep = {}
sets.Wep.index = {"PetCD", "PetMag", "PetDA", "BluCleave"}
Wep_index = 1

sets.Wep.PetCD = {
	main="Skullrender",
	sub="Charmer's merlin"
}

sets.Wep.PetMag = {
	main="Mdomo Axe",
    sub={ name="Kumbhakarna", augments={'Pet: "Mag.Atk.Bns."+16','"Avatar perpetuation cost" -2',}},
}

sets.Wep.PetDA = {
	main="Skullrender",
	sub="Arktoi"
}

sets.Wep.BluCleave = {
	main="Charmer's merlin"
}
-- Pet sets --

sets.Pet = {}
sets.Pet.index = {'Bertha', 'Xerin', 'Randy', 'Patrick', 'Ibuki', 'Reinhard', 'Storm'}
Pet_index = 1

sets.Pet.Bertha = {
	ammo="Bubbly Broth"
}
sets.Pet.Bertha.WS = {
	aoe="Tegmina Buffet",
	st="Sensilla Blades"
}

sets.Pet.Xerin = {
	ammo="Spicy Broth"
}
sets.Pet.Xerin.WS = {
	aoe="Tegmina Buffet",
	st="Sensilla Blades"
}

sets.Pet.Randy = {
	ammo="Meaty Broth"
}
sets.Pet.Randy.WS = {
	aoe="Claw Cyclone",
	st="Razor Fang"
}

sets.Pet.Patrick = {
	ammo="Livid Broth"
}
sets.Pet.Patrick.WS = {
	aoe="Fireball",
	st="Blockhead"
}

sets.Pet.Ibuki = {
	ammo="Salubrious Broth"
}
sets.Pet.Ibuki.WS = {
	aoe="Swooping Frenzy",
	st="Pentapeck"
}

sets.Pet.Reinhard = {
	ammo="Rapid Broth"
}
sets.Pet.Reinhard.WS = {
	aoe="Ripper Fang",
	st="Chomp Rush"
}

sets.Pet.Storm = {
	ammo="Insipid Broth"
}
sets.Pet.Storm.WS = {
	aoe="Beak Lunge",
	st="Wing Slap"
}


-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'Cleave'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.DT,{
	ring1="Warp ring",
	ring2="Capacity ring",
})

sets.Idle.Cleave = set_combine(sets.TP.DT, {
	back="Aptitude Mantle"
})

-- WS sets --

sets.WS = {
	head="Meghanada visor +1",
	neck="Asperity necklace",
	ear1="Ishvara earring",
	ear2="Tati earring",
	body="Meghanada cuirie +1",
	hands="Meghanada gloves +2",
	ring1="Ifrit ring",
	ring2="Ifrit ring",
	back="Meanagh Cape +1",
	waist="Warwolf Belt",
	legs="Meghanada Chausses +1",
	feet="Meghanada Jambeaux +1"
}

-- Precast Spell sets --

sets.precast = {}

--Utility--
sets.Utility = {}
