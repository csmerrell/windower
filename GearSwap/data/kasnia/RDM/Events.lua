-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.action_type == 'Magic' then
        equip(sets.FC)
    end
end

-- Midcast --

function Events.LocalMidcast(spell, act)

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
