sets.Rings = {}
sets.Rings.index = {'Warp', 'Exhaustible', 'Perm'}
Rings_index = 1

sets.Rings.Warp = {
    ring2 = "Warp Ring"
}

sets.Rings.Exhaustible = {
    ring1 = "Facility Ring",
    ring2 = "Empress Band"
}

sets.Rings.Perm = {
    ring1 = "Endorsement Ring",
    ring2 = "Echad Ring"
}

sets.Misc = {}
sets.Misc.index = { 'Sprinter_Shoes', 'Republic_Aketon', 'Kingdom_Aketon', 'Chocobo_Shirt' }
Misc_index = 1

sets.Misc.Sprinter_Shoes = {
    feet = "Sprinter's Shoes",
}

sets.Misc.Republic_Aketon = {
    body = "Republic Aketon"
}

sets.Misc.Kingdom_Aketon = {
    body = "Kingdom Aketon"
}

sets.Misc.Chocobo_Shirt = {
    body = "Chocobo Shirt"
}


-- JA Sets for Precast Function --
sets.JA = {}

-- TP/Engaged sets --
sets.TP = {}
sets.TP.index = {'XP_Rings', 'Perm_Rings'}
TP_index = 1

sets.TP.Acc = {
}

sets.TP.XP_Rings = set_combine(sets.TP.Acc, {
    ring1 = "Caliber Ring",
    ring2 = "Empress Band"
})

sets.TP.Perm_Rings = set_combine(sets.TP.Acc, {
    ring1 = "Echad Ring",
    ring2 = "Warp Ring"
})

-- Idle Sets --
sets.Idle = {}
sets.Idle.index = {'XP_Rings', 'Perm_Rings'}
Idle_index = 1

sets.Idle.XP_Rings = set_combine(sets.TP.Acc, {
    ring1 = "Caliber Ring",
    ring2 = "Empress Band"
})

sets.Idle.Perm_Rings = set_combine(sets.TP.Acc, {
    ring1 = "Echad Ring",
    ring2 = "Warp Ring"
})

-- Wep sets --
sets.Wep = {}
sets.Wep.index = {'Main'}
Wep_index = 1

sets.Wep["Main"] = {}

-- WS sets --

sets.WS = {
}

-- Precast Spell sets --

sets.FC = {
}

sets.FC.Cure = set_combine(sets.FC, {
})

-- Magic sets --
sets.Magical = set_combine(sets.TP.Acc, {
})

sets.Healing = set_combine(sets.Magical, {
})

sets.PhysMag = set_combine(sets.TP.Acc, {
})

sets.SkillBuff = set_combine(sets.Magical, {
})
