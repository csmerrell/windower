-- Bind Hotkey Commands --

-- Custom Commands --
function Commands.Nuke(commandargs)
    if buffactive["Mounted"] then
        Utils.Input('/dismount')
    end
    spells = Elements[CurrentElement]
    if commandargs[3] == "me" then
        if commandargs[2] == "storm" then
            cmd = '/ma \"'..spells["storm2"]..'\" <me>'
            altCmd = '/ma \"'..spells["storm"]..'\" <me>'
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

function Commands.SetMirror(commandargs)
    if commandargs[2] == 'on' then
        Globals.IsMirrored = true
        Utils.Echo("-- Mirror mode enabled --")
    elseif commandargs[2] == 'off' then
        Globals.IsMirrored = false
        Utils.Echo("-- Mirror mode disabled --")
    else

    end
end

function Commands.Ja(commandargs)
    if buffactive["Mounted"] then
        Utils.Input('/dismount')
    end
    cmd = '/ja \"'..commandargs[2]..'\" <me>'
    Utils.Input(cmd)
    Utils.Mirror(cmd)
end

function Commands.Pet(commandargs)
    if commandargs[3] == "me" then
        cmd = '/pet \"'..commandargs[2]..'\" <me>'
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[3] == "t" then
        target = windower.ffxi.get_mob_by_target('<lastst>').id
        cmd = '/pet \"'..commandargs[2]..'\" '..target
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[4] then
        target = windower.ffxi.get_mob_by_target('<lastst>').id
        cmd = '/pet \"'..commandargs[2]..'\" '..target
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[3] then
        cmd = '/pet \"'..commandargs[2]..'\" '..commandargs[3]..''
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    else
        cmd = '/pet \"'..commandargs[2]..'\" <stnpc>'
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    end
end

function Commands.PetMap(commandargs)
    if buffactive["Mounted"] then
        Utils.Input('/dismount')
    end
    Abilities = Avatars[CurrentAvatar]
    if commandargs[3] == "me" then
        cmd = '/pet \"'..Abilities[commandargs[2]]..'\" <me>'
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[3] == "t" then
        target = windower.ffxi.get_mob_by_target('<lastst>').id
        cmd = '/pet \"'..Abilities[commandargs[2]]..'\" '..target
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[4] then
        target = windower.ffxi.get_mob_by_target('<lastst>').id
        cmd = '/pet \"'..Abilities[commandargs[2]]..'\" '..target
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    elseif commandargs[3] then
        cmd = '/pet \"'..Abilities[commandargs[2]]..'\" '..commandargs[3]..''
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    else
        cmd = '/pet \"'..Abilities[commandargs[2]]..'\" <stnpc>'
        Utils.Input(cmd)
        Utils.Mirror(cmd)
    end
end

function Commands.SetAvatar(commandargs)
    Utils.Mirror("//gs c SetAvatar "..commandargs[2])
    if commandargs[2] and Avatars[commandargs[2]] then
        CurrentAvatar = commandargs[2]
        Utils.Echo("-- Avatar set to "..commandargs[2].." --")
    else
        Utils.Echo("-- Invalid Avatar Name --")
    end
end

function Commands.NextAvatar(commandargs)
    Utils.Mirror("//gs c NextAvatar")
    if CurrentAvatar == "Ifrit" then
        CurrentAvatar = "Shiva"
    elseif CurrentAvatar == "Shiva" then
        CurrentAvatar = "Ramuh"
    elseif CurrentAvatar == "Ramuh" then
        CurrentAvatar = "Garuda"
    elseif CurrentAvatar == "Garuda" then
        CurrentAvatar = "Titan"
    elseif CurrentAvatar == "Titan" then
        CurrentAvatar = "Leviathan"
    elseif CurrentAvatar == "Leviathan" then
        CurrentAvatar = "Fenrir"
    elseif CurrentAvatar == "Fenrir" then
        CurrentAvatar = "Diabolos"
    elseif CurrentAvatar == "Diabolos" then
        CurrentAvatar = "Carbuncle"
    elseif CurrentAvatar == "Carbuncle" then
        CurrentAvatar = "Ifrit"
    else
    end
    Utils.Echo("-- Avatar set to "..CurrentAvatar.." --")
end

function Commands.PrevAvatar(commandargs)
    Utils.Mirror("//gs c PrevAvatar")
    if CurrentAvatar == "Ifrit" then
        CurrentAvatar = "Carbuncle"
    elseif CurrentAvatar == "Shiva" then
        CurrentAvatar = "Ifrit"
    elseif CurrentAvatar == "Ramuh" then
        CurrentAvatar = "Shiva"
    elseif CurrentAvatar == "Garuda" then
        CurrentAvatar = "Ramuh"
    elseif CurrentAvatar == "Titan" then
        CurrentAvatar = "Garuda"
    elseif CurrentAvatar == "Leviathan" then
        CurrentAvatar = "Titan"
    elseif CurrentAvatar == "Fenrir" then
        CurrentAvatar = "Leviathan"
    elseif CurrentAvatar == "Diabolos" then
        CurrentAvatar = "Fenrir"
    elseif CurrentAvatar == "Carbuncle" then
        CurrentAvatar = "Diabolos"
    else
    end
    Utils.Echo("-- Avatar set to "..CurrentAvatar.." --")
end


function Commands.SetElement(commandargs)
    CurrentElement = commandargs[2]
    Utils.Echo('Element set to '..CurrentElement..' ')
    Utils.Mirror('//gs c setElement '..commandargs[2])
end

function Commands.AvatarHelp(commandargs)
    vals = {"Phys1","Phys2","MB1","MB2","Alt1","AoE","Ward1","Ward2","Ward3","Ward4","Astral","Favor"}
    Utils.Echo('\'')
    for i, val in ipairs(vals) do
        if Avatars[CurrentAvatar][val] then
            Utils.Echo("-- "..Avatars[CurrentAvatar][val].help)
        else
            Utils.Echo("-- "..val..": (Empty)")
        end
    end
end
