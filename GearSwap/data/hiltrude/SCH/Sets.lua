-- Fashion set for lockstyle --
sets.Fashion = {
	head="Pixie Hairpin +1",
	body="Argute Gown",
	hands="Arbatel Bracers",
	legs="Savant's Pants",
	feet="Arbatel Loafers +1"
}

-- Nuking sets --
sets.Nuking = {}

sets.Nuking.index = {'General', 'MB'}
NukingIndex = 1
sets.Nuking.General = {
	main="Akademos",
	sub="Enki strap",
	ammo="Ombre tathlum +1",
	head="Merlinic Hood",
	neck="Mizukage-no-Kubikazari",
	ear1="Friomisi Earring",
	ear2="Sortiarius Earring",
	body="Jhakri Robe +2",
	hands="Amalric Gages +1",
	ring1="Mujin Band",
	ring2="Locus Ring",
	back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
	waist="Oneiros Sash",
	legs="Mallquis Trews +2",
	feet="Jhakri Pigaches +1"
}

sets.Nuking.MB = {
	back="Seshaw cape"
}

-- sets.Nuking.Weakest = set_combine(sets.Fashion, {
-- 	main="Chatoyant Staff",
-- 	sub="Clerisy Strap",
-- 	head="Savant's Bonnet",
-- 	neck="Enhancing Torque",
-- 	ring1="Warp Ring",
-- 	ring2="Capacity Ring",
-- 	back="Aptitude Mantle",
-- 	waist="Witful Belt",
-- })

sets.Nuking.Aspir = {
	head="Striga Crown"
}

sets.Nuking.Enfeebling = {
	main="Akademos",
	sub="Mephitis Grip",
	head="Jhakri Coronal +1",
	body="Vanya Robe",
	hands="Jhakri Cuffs +1",
	legs="Jhakri Slops +1",
	feet="Jhakri Pigaches +1",
	neck="Stoicheion Medal",
	back="Altruistic Cape",
}

-- Precast Spell sets --

sets.precast = {}
sets.precast.FC = {
	sub="Clerisy Strap",
	ammo="Incantor Stone",
	head="Vanya Hood",
	hands="Gendewitha Gages +1",
	back={ name="Lugh's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','"Fast Cast"+10','Damage taken-5%',}},
	waist="Witful Belt",
	legs="Orvail pants",
	feet="Regal Pumps +1"
}

sets.precast.FC.Cure = {
	feet="Vanya Clogs"
}

-- Healing Sets --
sets.Healing = {}
sets.Healing.General = {
	main="Tamaxchi",
	head="Ebers cap",
	body="Ebers Bliaud",
	hands="Bokwus Gloves",
	ring1="Ephedra Ring",
	ring2="Ephedra Ring",
	left_ear="Nourish. earring",
	right_ear="Nourish. earring +1",
	back="Tempered Cape +1",
	legs="Ebers pantaloons",
	feet="Vanya Clogs",
}

sets.Healing.Regen = set_combine(sets.Healing.General, {
	hands="Ebers mitts",
})

sets.Healing.Cursna = {
	neck="Malison Medallion",
	ring1="Ephedra Ring",
	ring2="Ephedra Ring",
	back="Oretania's Cape +1",
	feet="Vanya Clogs"
}

-- Enhancing Sets --
sets.Enhancing = {}
sets.Enhancing.General = {
	neck="Enhancing Torque",
	back="Merciful Cape",
	feet="Regal Pumps +1"
}

sets.Enhancing["Stoneskin"] = {
	ear1="Earthcry Earring"
}

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
sets.Idle.index = {'General', 'CP', 'DT'}
Idle_index = 1

sets.Idle.General = set_combine(sets.Nuking.General,{
	ammo="Homiliary",
	head="Vanya hood",
	body="Vanya robe",
	neck="Loricate torque",
	body="Jhakri Robe +2",
	ring1="Warp Ring",
	ring2="Capacity Ring",
    back={ name="Lugh's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','"Fast Cast"+10','Damage taken-5%',}},
})

sets.Idle.CP = set_combine(sets.Idle.General, {
	ring1="Facility Ring",
	ring2="Capacity Ring",
	back="Mecistopins Mantle"
})

sets.Idle.DT = set_combine(sets.Idle.General, {
	back={ name="Lugh's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','"Fast Cast"+10','Damage taken-5%',}},
})

-- WS sets --

sets.WS = {}

--Utility--
sets.Utility = {}

--  Weapon sets --
sets.Wep = {}
sets.Wep.index = {'Staff', 'Club'}
Wep_index = 1

sets.Wep.Staff = {
	main="Coeus"
}
sets.Wep.Club = {
	main="Tamaxchi"
}
