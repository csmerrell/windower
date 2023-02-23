-- Precast --

function Events.LocalPrecast(spell, act)
	if string.match(spell.english,'Waltz') then
		equip(sets.JA.Waltz)
	end
end

-- Midcast --

function Events.LocalMidcast(spell, act)
	if string.match(spell.english,'Waltz') then
		equip(sets.JA.Waltz)
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
