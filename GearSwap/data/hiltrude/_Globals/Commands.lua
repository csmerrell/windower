require 'math'

Commands = {}

function Commands.Send(commandargs)
    command = commandargs[2]
    if commandargs[3] then
        Utils.SendToAlt(''..command..' '..commandargs[3])
    else
        target = windower.ffxi.get_mob_by_target('<lastst>').id
        Utils.SendToAlt(''..command..' '..target..'')
    end
end

function Commands.UseWS(commandargs)
    send_command('input /ws "'..WS_Set[WS_Index]..'" <t>')
end

function Commands.ToggleTPSet(commandargs)
    if TP_index < #sets.TP.index then
        TP_index = TP_index +1
    else
        TP_index = 1
    end
    send_command('@ input /echo >>> TP set changed to '..sets.TP.index[TP_index]..' ')
    equip(sets.TP[sets.TP.index[TP_index]])
end


function Commands.ToggleWS(commandargs)
    WS_index = WS_index + 1
    if WS_index > #sets.WS.index then
        WS_index = 1
    end
    Utils.Echo("Weapon Skill set to "..sets.WS.index[WS_index])
    equip(sets.WS[sets.WS.index[WS_index]])
end

function Commands.ToggleIdleSet(commandargs)
    Idle_index = Idle_index +1
    if Idle_index > #sets.Idle.index then
        Idle_index = 1
    end
    send_command('@ input /echo >>> Idle set changed to '..sets.Idle.index[Idle_index]..' ')
    equip(sets.Idle[sets.Idle.index[Idle_index]])
end

function Commands.SetElement(commandargs)
    CurrentElement = commandargs[2]
    Utils.Echo('Element set to '..CurrentElement..' ')
end

function Commands.NextElement(commandargs)
    if CurrentElement == 'Fire' then
        CurrentElement = 'Water'
    elseif CurrentElement == 'Water' then
        CurrentElement = 'Thunder'
    elseif CurrentElement == 'Thunder' then
        CurrentElement = 'Earth'
    elseif CurrentElement == 'Earth' then
        CurrentElement = 'Wind'
    elseif CurrentElement == 'Wind' then
        CurrentElement = 'Ice'
    elseif CurrentElement == 'Ice' then
        CurrentElement = 'Dark'
    elseif CurrentElement == 'Dark' then
        CurrentElement = 'Light'
    elseif CurrentElement == 'Light' then
        CurrentElement = 'Fire'
    end
    Utils.Echo('Element set to '..CurrentElement..' ')
end

function Commands.PrevElement(commandargs)
    if CurrentElement == 'Fire' then
        CurrentElement = 'Light'
    elseif CurrentElement == 'Water' then
        CurrentElement = 'Fire'
    elseif CurrentElement == 'Thunder' then
        CurrentElement = 'Water'
    elseif CurrentElement == 'Earth' then
        CurrentElement = 'Thunder'
    elseif CurrentElement == 'Wind' then
        CurrentElement = 'Earth'
    elseif CurrentElement == 'Ice' then
        CurrentElement = 'Wind'
    elseif CurrentElement == 'Dark' then
        CurrentElement = 'Ice'
    elseif CurrentElement == 'Light' then
        CurrentElement = 'Dark'
    end
    Utils.Echo('Element set to '..CurrentElement..' ')
end

function Commands.SetMaster(commandargs)
    if commandargs[2] == "true" then
        Globals.IsMaster = true
        Utils.Echo("-- "..Globals.Self.." set as mirror master --")
        for i, mirror in ipairs(Globals.Mirrors) do
            Utils.SendToMirror("//gs c SetMaster false", mirror)
        end
    else
        Globals.IsMaster = false
        Utils.Echo("-- "..Globals.Self.." set as mirror grunt --")
    end
end

function Commands.ToggleMirror(commandargs)
    Globals.IsMirrored = not Globals.IsMirrored
    Utils.SendToAlt('/console gs c toggleMirror')
    if Globals.IsMirrored then
        Utils.Echo("-- Mirror mode enabled --")
    else
        Utils.Echo("-- Mirror mode disabled --")
    end
    return true
end

function Commands.AddMirror(commandargs)
    if commandargs[2] then
        table.insert(Globals.Mirrors, commandargs[2])
    else
        Utils.Echo("Invalid mirror name")
    end
end

function Commands.ClearMirrors(commandargs)
    Globals.Mirrors = {}
end

function Commands.ListMirrors(commandargs)
    for i, mirror in ipairs(Globals.Mirrors) do
        Utils.Echo("-- "..mirror.." --")
    end
end

function Commands.ToggleMainMount(commandargs)
    if not buffactive["Mounted"] then
        Utils.Input('/mount "Red Crab"')
    else
        Utils.Input('/dismount')
    end
end

function Commands.ToggleAltMount(commandargs)
    Utils.SendToAlt('//gs c ToggleMainMount')
end

function Commands.AltFollow(commandargs)
    Utils.SendToAlts('/follow '..Globals.FollowTarget)
    Utils.SendToAlts('/echo Following '..Globals.FollowTarget)
end

function Commands.SetAltFollow(commandargs)
    Globals.FollowTarget = commandargs[2]
    Utils.Echo('Alt Follow Target set to '..commandargs[2])
end

function Commands.AddAlt(commandargs)
    if commandargs[2] then
        table.insert(Globals.Alts, commandargs[2])
    else
        Utils.Echo("Invalid alt name")
    end
end

function Commands.ClearAlts(commandargs)
    Globals.Mirrors = {}
end

function Commands.ListAlts(commandargs)
    for i, mirror in ipairs(Globals.Mirrors) do
        Utils.Echo("-- "..mirror.." --")
    end
end

-- function Commands.StopFollow(commandargs)
--     Utils.Echo(math.pi/2)
--     windower.ffxi.run(math.pi/2)
--     coroutine.sleep(1)
--     windower.ffxi.run(-math.pi/2)
--     coroutine.sleep(1)
--     windower.ffxi.run(false)
-- end

function Commands.ToggleAllMount(commandargs)
    if not buffactive["Mounted"] then
        Utils.Input('/mount Bomb')
    else
        Utils.Input('/dismount')
    end
    Utils.SendToAlts('//gs c ToggleMainMount')
end

function Commands.Map(commandargs)
    Utils.Input('/map')
end

function Commands.InviteAlt(commandargs)
    Utils.Input('/pcmd add '..Globals.Alt)
end

function Commands.AltAcceptInv(commandargs)
    Utils.SendToAlt('/join')
end

function Commands.InviteLanik(commandargs)
    Utils.Input('/pcmd add Lanik')
end

function Commands.InviteFeryja(commandargs)
    Utils.Input('/pcmd add Feryja')
end
