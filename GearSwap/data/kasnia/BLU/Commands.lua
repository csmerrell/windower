-- Bind Hotkey Commands --

-- Custom Commands --
function Commands.ToggleWepSet(commandargs)
    if Wep_index < #sets.Wep.index then
        Wep_index = Wep_index +1
    else
        Wep_index = 1
    end
    Utils.Echo('>>> Wep set changed to '..sets.Wep.index[Wep_index]..' ')

    equip(sets.Wep[sets.Wep.index[Wep_index]])
    if sets.Wep[sets.Wep.index[Wep_index]].SubWep then
        equip(sets.Wep[sets.Wep.index[Wep_index]].SubWep)
    end
end

function Commands.ToggleSkillup(commandargs)
    if Globals.SkillupActive then
        Utils.Echo('>>> Skillup mode toggled off <<<')
        Globals.SkillupActive = false
    else
        Utils.Echo('>>> Skillup mode toggled on <<<')
        Globals.SkillupActive = true
    end
end
