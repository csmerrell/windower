-- Fashion set for lockstyle --
sets.Fashion = {
	head="Lanun Tricorne",
	body="Councilor's Garb",
	hands="Adhemar Wristbands",
	legs="Lanun Culottes",
	feet="Meghanada Jambeaux +1"
}

-- JA Sets for Precast Function --
sets.JA = {}

sets.JA['Snake Eye'] = {
	legs="Lanun Culottes"
}

sets.JA['Phantom Roll'] = {
	head="Lanun Tricorne",
	ring1="Barataria Ring",
	back="Camulus's Mantle"
}

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Glass', 'CP'}
TP_index = 3

sets.TP.Glass = {
	ammo="Titanium Bullet",
	head="Meghanada Visor +1",
	neck="Defiant Collar",
	ear1="Bladeborn Earring",
	ear2="Steelflash Earring",
	body="Meghanada Cuirie +1",
	hands="Adhemar Wristbands",
	ring1="Epona's Ring",
	ring2="Rajas Ring",
	back="Camulus's Mantle",
	waist="Windbuffet Belt",
	legs="Meghanada Chausses",
	feet="Herculean boots"
}

sets.TP.CP = set_combine(sets.TP.Glass,{
	back="Aptitude mantle",
})


-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'CP', 'Cleave'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.MaxDT,{
	ring1="Warp Ring",
	ring2="Capacity Ring"
})

sets.Idle.CP = set_combine(sets.Idle.General, {
	ring2="Facility Ring",
	ring1="Capacity Ring"
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
