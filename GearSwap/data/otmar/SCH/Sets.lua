-- Nuking sets --
sets.Nuking = {}
sets.Nuking.index = {"General"}
NukingIndex = 1;

sets.Nuking.General = {
	main="Akademos",
	sub="Enki Strap",
	ammo="Kalboron Stone",
	head="Jhakri Coronal +2",
	neck="Atzintli Necklace",
	ear1="Friomisi Earring",
	ear2="Barkarole Earring",
	body="Jhakri Robe +2",
	hands="Amalric Gages",
	ring1="Mujin Band",
	ring2="Locus Ring",
	back="Seshaw Cape",
	waist="Hachirin no Obi",
	legs="Jhakri Slops +1",
	feet="Jhakri Pigaches +1"
}

-- Precast Spell sets --

sets.precast = {}
sets.precast.FC = {
	grip="Clerisy strap",
	head="Nahtira hat",
	legs="Artsieq Hose",
	back={ name="Lugh's Cape", augments={'"Fast Cast"+10',}},
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

sets.Healing.Regen = set_combine(sets.Healing.General, {
	main="Coeus",
	body="Telchine Chasuble",
	back="Lugh's Cape"
})


-- JA Sets for Precast Function --
sets.JA = {}

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
	main="Akademos",
	sub="Mensch Strap",
	ammo="Homiliary",
	head="Telchine Cap",
	body="Jhakri Robe +2",
	hands="Telchine Gloves",
	legs="Doyen Pants",
	feet="Inspirited Boots",
	neck="Veisa Collar",
	ring1="Vocane Ring",
	ring2="Gelatinous Ring +1",
	back="Seshaw Cape"
}

sets.Idle.General = set_combine(sets.Idle.DT,{
	body="Jhakri Robe +2",
	ring1="Warp ring",
	ring2="Capacity ring",
})

-- WS sets --

sets.WS = {}

--Utility--
sets.Utility = {}
