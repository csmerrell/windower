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

function Commands.SetMirror(commandargs)
    if commandargs[2] == 'on' then
        Globals.IsMirrored = true
    elseif commandargs[2] == 'off' then
        Globals.IsMirrored = false
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

function Commands.SetElement(commandargs)
    CurrentElement = commandargs[2]
    Utils.Echo('Element set to '..CurrentElement..' ')
    Utils.Mirror('//gs c setElement '..commandargs[2])
end
