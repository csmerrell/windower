-- Bind Hotkey Commands --
send_command('bind ^f12 gs c ToggleTPSet')
send_command('bind ^f11 gs c ToggleIdleSet')
send_command('bind ^f10 gs c ToggleWepSet')
-- send_command('bind ^f9 gs c ToggleWS')

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

function Commands.NextPet(commandargs)
    if Pet_index < #sets.Pet.index then
        Pet_index = Pet_index +1
    else
        Pet_index = 1
    end
    Utils.Echo('>>> Pet changed to '..sets.Pet.index[Pet_index])
    equip(sets.Pet[sets.Pet.index[Pet_index]])
end

function Commands.PrevPet(commandargs)
    if Pet_index > 1 then
        Pet_index = Pet_index - 1
    else
        Pet_index = #sets.Pet.index
    end
    Utils.Echo('>>> Pet changed to '..sets.Pet.index[Pet_index])
    equip(sets.Pet[sets.Pet.index[Pet_index]])
end

function Commands.Reward(commandargs)
    equip(sets.JA["Reward"][commandargs[2]])
    send_command('@ input /ja Reward <me>')
end

function Commands.Ready(commandargs)
    send_command('@ input /pet \"'..sets.Pet[sets.Pet.index[Pet_index]].WS[commandargs[2]]..'\" <me>')
end
