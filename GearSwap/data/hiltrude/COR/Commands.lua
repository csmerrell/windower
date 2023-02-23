-- Bind Hotkey Commands --
send_command('bind ^f12 gs c ToggleTPSet')
send_command('bind ^f11 gs c ToggleIdleSet')
send_command('bind ^f10 gs c ToggleWepSet')
send_command('bind ^f9 gs c ToggleWS')

-- Custom Commands --
function Commands.ToggleWepSet(commandargs)
    if Wep_index < #sets.Wep.index then
        Wep_index = Wep_index +1
    else
        Wep_index = 1
    end
    Utils.Echo('>>> Wep set changed to '..sets.Wep.index[Wep_index]..' ')

    equip(sets.Wep[sets.Wep.index[Wep_index]])
    -- WS_Set = WeaponSkills[sets.Wep[sets.Wep.index[Wep_index]].type]
    -- WS_Index = 1
    if sets.Wep[sets.Wep.index[Wep_index]].SubWep then
        equip(sets.Wep[sets.Wep.index[Wep_index]].SubWep)
    end
end
