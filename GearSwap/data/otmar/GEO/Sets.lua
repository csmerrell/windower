-- Nuking sets --
sets.Nuking = {}
sets.Nuking.index = {"General"}
NukingIndex = 1;

sets.Nuking.General = {
    main="Idris",
    sub="Culminus",
    ammo="Ombre Tathlum +1",
    head="Ea Hat +1",
    body="Jhakri Robe +2",
    hands="Ea Cuffs +1",
    legs="Mallquis Trews +2",
    feet="Jhakri Pigaches +2",
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Locus Ring",
    right_ring="Mujin Band",
    back="Seshaw Cape",
}

-- Precast Spell sets --

sets.precast = {}
sets.precast.FC = {
	head="Nahtira hat",
	legs="Artsieq Hose",
	feet="Regal Pumps +1"
}

-- Healing Sets --
sets.Healing = {}
sets.Healing.General = {
}

sets.Healing.Regen = set_combine(sets.Healing.General, {
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
    main="Idris",
    sub="Culminus",
    ammo="Ombre Tathlum +1",
    head="Ea Hat +1",
    body="Jhakri Robe +2",
    hands="Ea Cuffs +1",
    legs="Mallquis Trews +2",
    feet="Geomancy Sandals",
    neck="Mizu. Kubikazari",
    waist="Hachirin-no-Obi",
    left_ear="Barkaro. Earring",
    right_ear="Friomisi Earring",
    left_ring="Locus Ring",
    right_ring="Mujin Band",
    back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
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
