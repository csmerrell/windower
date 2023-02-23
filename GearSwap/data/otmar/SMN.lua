include('_Globals/Globals.lua')
include('SMN/Sets.lua')
include('SMN/Events.lua')
include('SMN/Commands.lua')
include('SMN/Utils.lua')

Utils.SetFashion()
Utils.SetMacroPage(1,4)

Avatars = {
    Ifrit = {
        Phys1 = {name="Flaming Crush", help="Phys1: Flaming Crush (Big Hybrid)"},
        Phys2 = {name="Burning Strike", help="Phys2: Burning Strike (Smaller Hybrid)"},
        MB1 = {name="Meteor Strike", help="MB1: Meteor Strike"},
        MB2 = false,
        Alt1 = {name="Conflag Strike", help="Alt1: Conflag Strike (Breath damage, Lowers INT)"},
        AoE = false,
        Buff1 = {name="Crimson Howl", help="Buff1: Attack Boost (AoE)"},
        Buff2 = {name="Inferno Howl", help="Buff2: Enfire (AoE)"},
        Buff3 = false,
        Buff4 = false,
        Debuff1 = false,
        Debuff2 = false,
        Astral = {name="Inferno", help="Astral: Inferno"},
        Favor = {help="Favor: Double Attack + 25%"}
    },
    Shiva = {
        Phys1 = {name="Heavenly Strike", help="Phys1: Heavenly Strike "},
        Phys2 = {name="Rush", help="Phys2: Rush (fTP transfers)"},
        MB1 = {name="Blizzard IV", help="MB1: Blizzard IV"},
        MB2 = false,
        Alt1 = false,
        AoE = false,
        Buff1 = {name="Crystal Blessing", help="Buff1: Crystal Blessing (Party TP Bonus)"},
        Buff2 = {name="Frost Armor", help="Buff2: Frost Armor (Party Frost Spikes)"},
        Buff3 = false,
        Buff4 = false,
        Debuff1 = {name="Diamond Storm", help="Debuff1: Diamond Storm (AoE Enemy Evasion Down)"},
        Debuff2 = {name="Sleepga", help="Debuff2: Sleepga"},
        Astral = {name="Diamond Dust", help="Astral: Diamond Dust"},
        Favor = {help="Favor: Magic Atk Bonus +39"}
    },
    Ramuh = {
        Phys1 = {name="Chaotic Strike", help="Phys1: Chaotic Strike (Stuns Enemy)"},
        Phys2 = {name="Volt Strike", help="Phys2: Volt Strike "},
        MB1 = {name="Thunderspark", help="MB1: Thunderspark (AoE Thunder)"},
        MB2 = {name="Thunder IV", help="MB2: Thunder IV"},
        Alt1 = false,
        AoE = {name="Thunderspark", help="AoE: Thunderspark (AoE Thunder)"},
        Buff1 = {name="Shock Squall", help="Buff1: Shock Squall (AoE Stun)"},
        Buff2 = false,
        Buff3 = false,
        Buff4 = false,
        Debuff1 = false,
        Debuff2 = false,
        Astral = {name="Judgement Bolt", help="Astral: Judgement Bolt"},
        Favor = {help="Favor: Critical Hit Rate +23%"}
    },
    Garuda = {
        Phys1 = {name="Predator Claws", help="Phys1: Predator Claws (fTP Transfers)"},
        Phys2 = false,
        MB1 = {name="Wind Blade", help="MB1: Wind Blade"},
        MB2 = {name="Aero IV", help="MB2: Aero IV"},
        Alt1 = false,
        AoE = false,
        Buff1 = {name="Hastega II", help="Buff1: Hastega II"},
        Buff2 = {name="Fleet Wind", help="Buff2: Fleet Wind (Movement Speed +25%)"},
        Buff3 = {name="Aerial Armor", help="Buff3: Aerial Armor (AoE Party Blink)"},
        Buff4 = {name="Whispering Wind", help="Buff4: Whispering Wind (AoE Party Heal)"},
        Debuff1 = false,
        Debuff2 = false,
        Astral = {name="Aerial Blast", help="Astral: Aerial Blast"},
        Favor = {help="Favor: Evasion +37"}
    },
    Titan = {
        Phys1 = {name="Crag Throw", help="Phys1: Crag Throw (Slows 30%)"},
        Phys2 = {name="Geocrush", help="Phys2: Geocrush (Stuns)"},
        MB1 = {name="Stone IV", help="MB1: Stone IV"},
        MB2 = false,
        Alt1 = false,
        AoE = false,
        Buff1 = {name="Earthen Armor", help="Buff1: Earthen Armor (Reduces Crushing Blow Dmg by 45%)"},
        Buff2 = {name="Earthen Ward", help="Buff2: Earthen Ward (AoE Party Stoneskin)"},
        Buff3 = false,
        Buff4 = false,
        Debuff1 = false,
        Debuff2 = false,
        Astral = {name="Earthen Fury", help="Astral: Earthen Fury"},
        Favor = {help="Favor: Defense +97"}
    },
    Leviathan = {
        Phys1 = {name="Spinning Dive", help="Phys1: Spinning Dive "},
        Phys2 = false,
        MB1 = {name="Grand Fall", help="MB1: Grand Fall"},
        MB2 = {name="Water IV", help="MB2: Water IV"},
        Alt1 = {name="Tail Whip", help="Alt1: Tail Whip (Applies Gravity)"},
        AoE = false,
        Buff1 = {name="Soothing Current", help="Buff1: Soothing Current (Party Cure Potency Received +15%)"},
        Buff2 = {name="Spring Water", help="Buff2: Spring Water (AoE Cura + Debuff Removal)"},
        Buff3 = false,
        Buff4 = false,
        Debuff1 = {name="Tidal Roar", help="Debuff1: Tidal Roar (AoE Atk Down 25%)"},
        Debuff2 = {name="Slowga", help="Debuff2: Slowga"},
        Astral = {name="Tidal Wave", help="Astral: Tidal Wave"},
        Favor = {help="Favor: Magic Accuracy +37"}
    },
    Fenrir = {
        Phys1 = {name="Eclipse Bite", help="Phys1: Eclipse Bite (fTP Transfers)"},
        Phys2 = {name="Crescent Fang", help="Phys2: Crescent Fang (Paralyzes)"},
        MB1 = {name="Impact", help="MB1: Impact"},
        MB2 = {name="Lunar Bay", help="MB2: Lunar Bay"},
        Alt1 = false,
        AoE = false,
        Buff1 = {name="Ecliptic Growl", help="Buff1: Ecliptic Growl (Party Stat Boosts)"},
        Buff2 = false,
        Buff3 = false,
        Buff4 = false,
        Debuff1 = {name="Lunar Roar", help="Debuff1: Lunar Roar (AoE Dispel 2x Buffs)"},
        Debuff2 = false,
        Astral = {name="Howling Moon", help="Astral: Howling Moon"},
        Favor = {help="Favor: Magic Evasion +37"}
    },
    Diabolos = {
        Phys1 = {name="Blindside", help="Phys1: Blindside"},
        Phys2 = false,
        MB1 = {name="Night Terror", help="MB1: Night Terror (Dmg Boost if Target Asleep)"},
        MB2 = {name="Nether Blast", help="MB2: Nether Blast (Ignores MDT, Breath Damage)"},
        Alt1 = false,
        AoE = false,
        Buff1 = {name="Dream Shroud", help="Buff1: Dream Shroud (MAB & MDB)"},
        Buff2 = false,
        Buff3 = false,
        Buff4 = false,
        Debuff1 = {name="Somnolence", help="Debuff1: Somnolence (Deals DMG, Applies Gravity)"},
        Debuff2 = {name="Nightmare", help="Debuff2: Nightmare (AoE Sleep + Bio)"},
        Astral = {name="Ruinous Omen", help="Astral: Ruinous Omen"},
        Favor = {help="Favor: Refresh +7"}
    },
    Carbuncle = {
        Phys1 = false,
        Phys2 = false,
        MB1 = {name="Holy Mist", help="MB1: Holy Mist"},
        MB2 = {name="Meteorite", help="MB2: Meteorite"},
        Alt1 = false,
        AoE = false,
        Buff1 = {name="Healing Ruby", help="Buff1: Healing Ruby (Cure)"},
        Buff2 = {name="Healing Ruby II", help="Buff2: Healing Ruby II (Curaga)"},
        Buff3 = {name="Shining Ruby", help="Buff3: Shining Ruby (AoE Prot/Shell)"},
        Buff4 = false,
        Debuff1 = false,
        Debuff2 = false,
        Astral= {name="Searing Light", helps="Astral: Searing Light"},
        Favor = {help="Favor: Regen +27"}
    }
}
CurrentAvatar = "Ifrit"
