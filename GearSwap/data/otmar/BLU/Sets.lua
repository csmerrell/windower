-- Fashion set for lockstyle --
sets.Fashion = {
	head="Jhakri Coronal +2",
	body="Ayanmo corazza +2",
	hands="Amalric gages",
	legs="Samnuha tights",
	feet="Medium's sabots"
}

-- JA Sets for Precast Function --
sets.JA = {}

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'Acc', 'HighDT', 'LowDT', 'CP',  'Learning'}
TP_index = 1

sets.TP.Acc = {
	ammo="Amar cluster",
	head="Adhemar bonnet +1",
	neck="Asperity Necklace",
	ear1="Bladeborn Earring",
	ear2="Steelflash Earring",
	body="Adhemar Jacket +1",
	hands="Adhemar Wristbands +1",
	ring1="Ilabrat Ring",
	ring2="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}},
	waist="Windbuffet belt",
	legs="Samnuha tights",
	feet={ name="Herculean Boots", augments={'"Triple Atk."+4','Accuracy+12','Attack+6',}}
}

sets.TP.HighDT = set_combine(sets.TP.Acc, {
	ammo="Inlamvuyeso",
	ring1="Vocane ring",
	neck="Veisa collar",
	waist="Flume belt"
})

sets.TP.LowDT = set_combine(sets.TP.Acc, {
	ammo="Inlamvuyeso",
	ring1="Vocane ring",
})

sets.TP.CP = set_combine(sets.TP.Acc,{
    ammo="Inlamvuyeso",
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
    legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
    feet={ name="Herculean Boots", augments={'"Triple Atk."+4','Accuracy+12','Attack+6',}},
    neck="Veisa Collar",
    waist="Flume Belt",
    left_ear="Bladeborn Earring",
    right_ear="Steelflash Earring",
    left_ring="Capacity Ring",
    right_ring="Epona's Ring",
    back="Mecistopins Mantle"
})

sets.TP.Learning = set_combine(sets.TP.Acc,{
	head="Ayanmo zucchetto +2",
	hands="Assimilator's bazubands"
})

-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'General', 'Cleave', 'DT', 'CP'}
Idle_index = 1

sets.Idle.General = set_combine(sets.TP.Acc,{
	body="Jhakri Robe +2",
	ring1="Warp ring",
	ring2="Capacity ring"
})

sets.Idle.Cleave = set_combine(sets.TP.HighDT, {
	body="Jhakri Robe +2"
})

sets.Idle.DT = sets.TP.HighDT

sets.Idle.CP = set_combine(sets.Idle.General, {
	ring2="Facility Ring",
	ring1="Capacity Ring",
	back="Mecistopins mantle"
})

-- Wep sets --
sets.Wep = {}
sets.Wep.index = {'Main', 'Magic', 'Clubs'}
Wep_index = 1

sets.Wep.Main = {
	main="Tanmogayi +1",
	sub="Nibiru blade"
}

sets.Wep.Magic = {
	main="Vampirism",
	sub="Iris"
}

sets.Wep.Clubs = {
	main="Ebony wand",
    sub="Ebony wand"
}


-- WS sets --
sets.WS = {}
sets.WS.index = { "Chant du Cygne", "Savage Blade" }
WS_index = 1

sets.WS["Savage Blade"] = {
	ammo="Jukukik feather",
	head="Adhemar bonnet +1",
	neck="Asperity Necklace",
	ear1="Steelflash earring",
	ear2="Bladeborn earring",
	body="Ayanmo corazza +2",
	hands="Meghanada Gloves +2",
	ring2="Epona's ring",
	ring1="Ilabrat ring",
	back="Rosmerta's Cape",
	back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
	waist="Windbuffet belt",
	legs="Samnuha tights",
	feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','AGI+5','Accuracy+4','Attack+12',}},
}

sets.WS['Chant du Cygne'] = set_combine(sets.WS["Savage Blade"], {
	neck="Light gorget",
	body="Adhemar Jacket +1",
	hands="Adhemar wristbands +1",
	waist="Light Belt",
	feet="Ayanmo Gambieras +2",
	back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},
})

-- Precast Spell sets --

sets.FC = {
	head="Haruspex hat",
	ring1="Evanescence Ring",
	back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}},
	legs="Psycloth Lappas"
}

sets.FC.Cure = set_combine(sets.FC, {
	ear1="Mendicant's Earring",
	legs="Doyen Pants",
})

-- Magic sets --
sets.Magical = {
	ammo="Ombre Tathlum +1",
	head="Jhakri Coronal +2",
	body="Jhakri Robe +2",
	hands="Jhakri Cuffs +1",
	legs="Jhakri Slops +1",
	feet="Jhakri Pigaches +1",
	neck="Atzintli Necklace",
	waist="Hachirin-no-Obi",
	left_ear="Friomisi Earring",
	right_ear="Mendi. Earring",
	left_ring="Shiva Ring",
	right_ring="Shiva Ring",
	back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}},
}

sets.Healing = set_combine(sets.Magical, {
	ear1="Mendicant's Earring",
	hands="Telchine Gloves",
	feet="Medium's Sabots",
})

sets.PhysMag = {

}

sets.SkillBuff = {
	back="Cornflower Cape"
}
