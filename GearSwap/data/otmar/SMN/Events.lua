-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.action_type == 'Magic' then
		if sets.precast.FC[spell.english] then
			equip(sets.precast.FC[spell.english])
		elseif string.find(spell.english, "Cure") then
			equip(sets.precast.FC.Cure)
		else
        	equip(sets.precast.FC)
		end
    end
end

-- Midcast --

function Events.LocalMidcast(spell, act)
	if string.find(spell.english, 'Cure') then
		equip(sets.Healing.General)
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
