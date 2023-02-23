-- Fashion set for lockstyle --
sets.Fashion = {
	main="Keraunos",
	head="Convoker's Horn +1",
	body="Convoker's Doublet +2",
	hands="Bokwus Gloves",
	legs="Evoker's Spats",
	feet="Convoker's Pigaches +1"
}

-- Precast Spell sets --

sets.precast = {}
sets.precast.FC = {
	sub="Clerisy Strap",
	head="Vanya Hood",
	waist="Witful Belt",
	legs="Orvail Pants",
	feet="Regal Pumps +1"
}

sets.precast.FC.Cure = {
	legs="Vanya Clogs"
}

-- Healing Sets --
sets.Healing = {}
sets.Healing.General = {
	main="Tamaxchi",
	head="Vanya Hood",
	body="Vanya Robe",
	hands="Bokwus Gloves",
	ring1="Sirona's Ring",
	ring2="Ephedra Ring",
	back="Tempered Cape +1",
	feet="Vanya Clogs"
}

-- JA Sets for Precast Function --
sets.JA = {}

sets.JA.PhysBloodPact = {
	main="Keraunos",
	sub="Elan Strap",
	body="Convoker's Doublet +2",
	hands="Merlinic Dastanas",
	ring1="Varar Ring",
	ring2="Varar Ring",
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
sets.Idle.index = {'General', 'DT'}
Idle_index = 1

sets.Idle.DT = {
	main="Keraunos",
	sub="Elan Strap",
	ammo="Eminent Sachet",
	head="Convoker's Horn +1",
    body="Convoker's Doublet +2",
    hands="Merlinic Dastanas",
    legs="Orvail Pants",
	feet="Convoker's Pigaches +1",
    neck="Stoicheion Medal",
    waist="Witful Belt",
    ear1="Sortiarius Earring",
    ear2="Friomisi Earring",
    ring1="Warp Ring",
    ring2="Capacity Ring",
    back="Aptitude Mantle",
}

sets.Idle.Engaged = set_combine(sets.JA.PhysBloodPact, {

})

sets.Idle.General = set_combine(sets.Idle.DT,{
	ring1="Warp ring",
	ring2="Capacity ring",
})

-- WS sets --

sets.WS = {}

--Utility--
sets.Utility = {}
