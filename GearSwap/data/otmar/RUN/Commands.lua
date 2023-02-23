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
    WS_Set = WeaponSkills[sets.Wep[sets.Wep.index[Wep_index]].type]
    WS_Index = 1
    if sets.Wep[sets.Wep.index[Wep_index]].SubWep then
        equip(sets.Wep[sets.Wep.index[Wep_index]].SubWep)
    end
end

function Commands.RuneUp(commandargs)
    send_command('input /ja \"'..Elements[CurrentElement]..'\" <me>')
end

function Commands.RotateAggro(commandargs)
    if commandargs[2] == 'start' then
        rotateAggro = true
        if Utils.CheckFastCast() then
            self_command('rotationTick')
        end
        Utils.Echo('Aggro Rotation Engaged')
    elseif commandargs[2] == 'stop' then
        rotateAggro = false
        Utils.Echo('Aggro Rotation Terminated')
    end
end

function Commands.RotationTick(commandargs)
    if rotateAggro and not activatingFastCast then
        if Utils.CheckFastCast() then
            spellInfo = Utils.GetLowestDelaySpell()
            if spellInfo.Name  == "Foil" then
                send_command('wait '..spellInfo.Delay..';input /ma \"'..spellInfo.Name..'\" <me>;wait 3.0;input //gs c rotationTick')
            else
                send_command('wait '..spellInfo.Delay..';input /ma \"'..spellInfo.Name..'\" <t>;wait 3.0;input //gs c rotationTick')
            end
        end
    end
end
