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
    end
end

-- Aftercast --
function Events.LocalAftercast(spell,act)

end


-- Buff Change --
function Events.LocalBuffChange(buff,isNew)

end

-- Status Change --
function Events.LocalStatusChange(status,isNew)

end
