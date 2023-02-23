-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.action_type == 'Magic' then
        equip(sets.FC)
    end
    if Utils.ContainsAbility(blueMap.Healing,spell.english) then
        equip(sets.FC.Cure)
    end
end

-- Midcast --

function Events.LocalMidcast(spell, act)
    if Utils.ContainsAbility(blueMap.Healing,spell.english) then
        equip(sets.Healing)
    elseif Utils.ContainsAbility(blueMap.PhysMag,spell.english) then
        equip(sets.PhysMag)
    elseif Utils.ContainsAbility(blueMap.Magical,spell.english) then
        equip(sets.Magical)
    elseif Utils.ContainsAbility(blueMap.SkillBuff,spell.english) then
        equip(sets.SkillBuff)
    else
        equip(sets.TP[sets.TP.index[TP_index]])
    end
end

-- Aftercast --
function Events.LocalAftercast(spell,act)
    if Globals.SkillupActive then
        self = windower.ffxi.get_player()
        if not buffactive["Food"] then
            send_command('wait 1.0;input /item \"Seafood Pitaru\" <me>')
        elseif self.vitals.mp < 50 then
            send_command('wait 1.0;input /ja Convert <me>')
        elseif not buffactive["Refresh"] then
            send_command('wait 3.0;input /ma \"Refresh\" <me>')
        else
            send_command('wait 3.0;input /ma \"Pollen\" <me>')
        end
    end
end


-- Buff Change --
function Events.LocalBuffChange(buff,isNew)

end

-- Status Change --
function Events.LocalStatusChange(status,isNew)

end
