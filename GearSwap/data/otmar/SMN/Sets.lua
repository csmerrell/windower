-- Fashion set for lockstyle --
sets.Fashion = {
	main="Keraunos",
	head="Nahtirah Hat",
	body="Convoker's Doublet +2",
	hands="Amalric Gages",
	legs="Evoker's Spats",
	feet="Convoker's Pigaches +1"
}

-- Precast Spell sets --

sets.precast = {}
sets.precast.FC = {
	sub="Clerisy Strap",
	head="Nahtirah Hat",
	legs="Artsieq Hose",
	feet="Regal Pumps +1"
}

sets.precast.FC.Cure = {
	legs="Doyen Pants"
}

sets.precast.FC["Stoneskin"] = set_combine(sets.precast.FC, {
	legs="Doyen Pants"
})

-- Healing Sets --
sets.Healing = {}
sets.Healing.General = {
	main="Serenity",
	sub="Giuoco Grip",
	ammo="Homiliary",
	head="Telchine Cap",
	body="Psycloth Vest",
	hands="Telchine Gloves",
	legs="Doyen Pants",
	feet="Regal Pumps +1",
	ear1="Mendi. Earring"
}

-- JA Sets for Precast Function --
sets.JA = {}

sets.JA.PhysBloodPact = {
	main="Keraunos",
	sub="Elan Strap",
	head="Convoker's Horn +1",
	neck="Adad Amulet",
	body="Convoker's Doublet +2",
	hands="Amalric Gages",
	ring1="Varar Ring",
	ring2="Varar Ring",
	back="Seshaw Cape",
	waist="Hachirin no Obi",
	legs="Artsieq Hose",
	feet="Convoker's Pigaches +1"
}

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Main', 'CP'}
TP_index = 1

sets.TP.Main = {}

sets.TP.CP = {}

-- Enmity set --

sets.Enmity = {}

-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'Engaged', 'DT'}
Idle_index = 1

sets.Idle.DT = {
	main="Keraunos",
	sub="Elan Strap",
	ammo="Eminent Sachet",
	head="Convoker's Horn +1",
    body="Convoker's Doublet +2",
    hands="Amalric Gages",
    legs="Artsieq Hose",
	feet="Convoker's Pigaches +1",
    neck="Veisa Collar",
    waist="Hachirin no Obi",
    ear1="Barkarole Earring",
    ear2="Friomisi Earring",
    ring1="Warp Ring",
    ring2="Capacity Ring",
    back="Seshaw Cape"
}

sets.Idle.Engaged = set_combine(sets.JA.PhysBloodPact, {

})

sets.Idle.General = set_combine(sets.Idle.DT,{
	body="Jhakri Robe",
	ring1="Warp ring",
	ring2="Capacity ring",
})

-- WS sets --

sets.WS = {}

--Utility--
sets.Utility = {}
