-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.type == 'CorsairRoll' then
        equip(sets.JA["Phantom Roll"])
    end
end

-- Midcast --

function Events.LocalMidcast(spell, act)
    if spell.type == 'CorsairRoll' then
        equip(sets.JA["Phantom Roll"])
    end
end

-- Aftercast --
function Events.LocalAftercast(spell,act)

end


-- Buff Change --
function Events.LocalBuffChange(buff,isNew,buffDetails)

end

function Events.LocalBuffRefresh(buff,buffDetails)

end

-- Status Change --
function Events.LocalStatusChange(new,old)

end
