Utils = {}

function Utils.Input(command)
    send_command('input '..command..' ')
end

function Utils.Echo(command)
    send_command('input /echo '..command..' ')
end

function Utils.SendToAlt(command)
    windower.send_ipc_message('send '..Globals.Alt..' '..command..'')
end

function Utils.SendToAlts(command)
    for i, alt in ipairs(Globals.Alts) do
        windower.send_ipc_message('send '..alt..' '..command..'')
    end
end

function Utils.SendToMirror(command, mirror)
    windower.send_ipc_message('send '..mirror..' '..command..'')
end

function Utils.Mirror(command)
    if Globals.IsMirrored and Globals.IsMain then
        for i, mirror in ipairs(Globals.Mirrors) do
            Utils.SendToMirror(command, mirror)
        end
    end
end

function Utils.ContainsAbility(table,ability)
   for i, token in ipairs(table) do
	   if token == ability then
		   return true
	   end
   end
   return false
end

function Utils.Tokenize(command)
    split = {}
    for token in string.gmatch(command, "[^%s]+") do
       table.insert(split, token)
    end

    commandargs = {}
    IsPhrase = false
    phrase = ""
    for i, token in ipairs(split) do
        if string.find(token, "\'", 1) then
            IsPhrase = not IsPhrase
        end
        if IsPhrase then
            phrase = phrase..''..token..' '
        else
            phrase = phrase..''..token
            if string.find(token, "\'", 1) then
                phrase = string.sub(phrase, 2, (string.len(phrase) - 1))
            end
            table.insert(commandargs, phrase)
            phrase = ""
        end
    end

    return commandargs
end

function Utils.SetMacroPage(set,book)
    if not tonumber(set) then
        add_to_chat(123,'Error setting macro page: Set is not a valid number ('..tostring(set)..').')
        return
    end
    if set < 1 or set > 10 then
        add_to_chat(123,'Error setting macro page: Macro set ('..tostring(set)..') must be between 1 and 10.')
        return
    end

    if book then
        if not tonumber(book) then
            add_to_chat(123,'Error setting macro page: book is not a valid number ('..tostring(book)..').')
            return
        end
        if book < 1 or book > 20 then
            add_to_chat(123,'Error setting macro page: Macro book ('..tostring(book)..') must be between 1 and 20.')
            return
        end
        send_command('@input /macro book '..tostring(book)..';wait 1.0;input /macro set '..tostring(set))
    else
        send_command('@input /macro set '..tostring(set))
    end
end

function Utils.SetFashion()
    if sets.Wep and sets.Wep.NonFashion then
        send_command('wait 1.5;gs equip Fashion;wait 2;input /lockstyle on;wait 1.5;gs equip Idle.General;wait 1;gs equip Wep.NonFashion')
    else
        send_command('wait 1.5;gs equip Fashion;wait 2;input /lockstyle on;wait 1.5;gs equip Idle.General')
    end
end

function Utils.Capitalize(input)
    return input:gsub("^%l", string.upper)
end

function Utils.LogTable(input)
    print(dump(input))
end

function Utils.BuffActive(input)
    return Utils.SelfBuffs()[input] == true
end

function Utils.AbilityReady(abilityId)
    return windower.ffxi.get_ability_recasts()[abilityId] == 0
end

function Utils.SpellReady(spellId)
    return windower.ffxi.get_spell_recasts()[spellId] == 0
end

function Utils.SelfBuffs()
    buffs = windower.ffxi.get_player().buffs
    t = {}
    for key, buffId in pairs(buffs) do
        t[buffId] = true
    end
    
    return t
end

function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ', '
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end