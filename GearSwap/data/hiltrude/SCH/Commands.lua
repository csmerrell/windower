-- Bind Hotkey Commands --
send_command('bind ^f12 gs c ToggleNukeSet')
send_command('bind ^f11 gs c ToggleIdleSet')
send_command('bind ^f10 gs c ToggleWepSet')

-- Custom Commands --
function Commands.Bot(commandargs)
    Bot(commandargs)
end

function Commands.Check(commandargs)
    if commandargs[3] then
        Utils.CheckFlags(commandargs[2], commandargs[3])
    else
        Utils.CheckFlags(commandargs[2], "<stnpc>")
    end
end

function Commands.Nuke(commandargs)
    if buffactive["Mounted"] then
        Utils.Input('/dismount')
    end
    spells = Elements[CurrentElement]
    if commandargs[3] == "me" then
        if commandargs[2] == "storm" then
            cmd = '/ma \"'..spells["storm2"]..'\" <me>'
            altCmd = '/ma \"'..spells["storm2"]..'\" <me>'
            Utils.Input(cmd)
            Utils.Mirror(altCmd)
        else
            cmd = '/ma \"'..spells[commandargs[2]]..'\" <me>'
            Utils.Input(cmd)
            Utils.Mirror(cmd)
        end
    elseif commandargs[4] then
        target = windower.ffxi.get_mob_by_target('<lastst>').id
        cmd = '/ma \"'..spells[commandargs[2]]..'\" '..target
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[3] then
        cmd = '/ma \"'..spells[commandargs[2]]..'\" '..commandargs[3]..''
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    else
        cmd = '/ma \"'..spells[commandargs[2]]..'\" <stnpc>'
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    end
end

function Commands.Spell(commandargs)
    if buffactive["Mounted"] then
        Utils.Input('/dismount')
    end
    spells = Elements[CurrentElement]
    if commandargs[3] == "me" then
        cmd = '/ma \"'..commandargs[2]..'\" <me>'
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[4] then
        target = windower.ffxi.get_mob_by_target('<lastst>').id
        cmd = '/ma \"'..commandargs[2]..'\" '..target
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[3] then
        cmd = '/ma \"'..commandargs[2]..'\" '..commandargs[3]..''
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    else
        cmd = '/ma \"'..commandargs[2]..'\" <stnpc>'
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    end
end

function Commands.PartyStorm(commandargs)
    Utils.Echo("-- Casting Storm Buffs on Party --")
    Utils.Echo("-- Wait for completion of sequence --")
    Utils.SendToAlt("/echo -- Casting Storm Buffs on Party --")
    Utils.SendToAlt("/echo -- Wait for completion of sequence --")
    BuffingStorms = true
    StormIdx = 1
    StormCommands = PartyStorm
    Utils.UseNextStormCommand()
end

function Commands.SelfStorm(commandargs)
    Utils.Echo("-- Casting Storm Buffs on Self --")
    Utils.Echo("-- Wait for completion of sequence --")
    Utils.SendToAlt("/echo -- Casting Storm Buffs on Self --")
    Utils.SendToAlt("/echo -- Wait for completion of sequence --")
    BuffingStorms = true
    StormIdx = 1
    StormCommands = SelfStorm
    Utils.UseNextStormCommand()
end

function Commands.ToggleAutoKlima(commandargs)
    AutoKlima = not AutoKlima
    if AutoKlima then
        Utils.Echo('-- Automatic Klimaforms Enabled --')
        Utils.SendToAlt('/echo -- '..Globals.Self..'\'s Automatic Klimaforms Enabled --')
    else
        Utils.Echo('-- Automatic Klimaforms Disabled --')
        Utils.SendToAlt('/echo -- '..Globals.Self..'\'s Automatic Klimaforms Disabled --')
    end
end

function Commands.ToggleWepSet(commandargs)
    if Wep_index < #sets.Wep.index then
        Wep_index = Wep_index +1
    else
        Wep_index = 1
    end
    send_command('@ input /echo >>> Wep set changed to '..sets.Wep.index[Wep_index]..' ')

    equip(sets.Wep[sets.Wep.index[Wep_index]])
end

function Commands.ToggleNukeSet(commandargs)
    if NukingIndex < #sets.Nuking.index then
        NukingIndex = NukingIndex +1
    else
        NukingIndex = 1
    end
    Utils.Echo('>>> Nuking set changed to '..sets.Nuking.index[NukingIndex]..' ')
    equip(sets.Nuking[sets.Nuking.index[NukingIndex]])
end
