Events = {}


-- Global Precast --
function Events.GlobalPrecast(spell, act)
    if spell.type == "Trust" then
		equip(sets.TP.Acc)
	end

    if spell.type == 'JobAbility' then
        if sets.JA[spell.english] then
            equip(sets.JA[spell.english])
        end
    end

    if spell.type == 'WeaponSkill' then
        if sets.WS[spell.english] then
            equip(sets.WS[spell.english])
        else
            equip(sets.WS)
        end
    end
end

-- Global Midcast --
function Events.GlobalMidcast(spell, act)
    if spell.type == 'JobAbility' then
        if sets.JA[spell.english] then
            equip(sets.JA[spell.english])
        end
    end

    -- if spell.type == 'WeaponSkill' then
    --     if sets.WS[spell.english] then
    --         equip(sets.WS[spell.english])
    --     else
    --         equip(sets.WS)
    --     end
    -- end
end

-- Global Aftercast --
function Events.GlobalAftercast(spell, act)
    -- Utils.Echo(spell.english..' = '..spell.recast_id)

    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_index]])
    else
        equip(sets.Idle[sets.Idle.index[Idle_index]])
    end
end

-- Global Buff Change --
function Events.GlobalBuffChange(buff, isNew)
    if buff == "Silence" and isNew then
        Utils.Input('/item "Echo Drops" <me>')
        Utils.Input('/item "Remedy" <me>')
    elseif buff == "Curse" and isNew then
        Utils.Input('/item "Holy Water" <me>')
        healingCurse = true
    end
end

-- Global Status Change --
function Events.GlobalStatusChange(buff,isNew)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_index]])
    else
        equip(sets.Idle[sets.Idle.index[Idle_index]])
    end

    if player.status == 'Engaged' and buffactive['Reive Mark'] then
        equip{neck="Adoulin's Resolve +1"}
    end
end
