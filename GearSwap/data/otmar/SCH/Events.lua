-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.action_type == 'Enhancing' then
		if sets.precast.FC.Enhancing[spell.english] then
			equip(sets.precast.FC.Enhancing[spell.english])
		else
			equip(sets.precast.FC.Enhancing)
		end
    end

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
    if spell.english == "Cursna" then
		equip(sets.Healing.Cursna)
	end

	if string.find(spell.english, 'Cure') then
		equip(sets.Healing.General)

		if buffactive["Rapture"] then
			equip({
				head="Arbatel Bonnet"
			})
		end
	end

	if spell.skill == "Elemental Magic" then
		equip(sets.Nuking[sets.Nuking.index[NukingIndex]])

        if buffactive["Klimaform"] then
            equip({feet="Arbatel loafers"})
        end

		if buffactive["Ebullience"] then
			equip({head= "Arbatel Bonnet"})
		end
	end

    if spell.skill == "Dark Magic" then
        if string.find(spell.english, 'Aspir')
            or string.find(spell.english, 'Drain') then
                equip(sets.Nuking.Aspir)
        end
    end

	if spell.skill == "Enfeebling Magic" then
		equip(sets.Nuking.Enfeebling)
	end

	if spell.skill == "Enhancing Magic" then
		-- equip(sets.Enhancing.General)
		if buffactive["Perpetuance"] then
			equip({
				hands= "Arbatel Bracers"
			})
		end
	end

	if string.find(spell.english, 'Regen') then
		equip(sets.Healing.Regen)
	end

	if spell.type == 'JobAbility' then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end
end

-- Aftercast --
function Events.LocalAftercast(spell,act)
    if player.status == 'Engaged' then
        equip(set_combine(sets.Idle[sets.Idle.index[Idle_index]], sets.TP[sets.TP.index[TP_index]]))
    end
end


-- Buff Change --
function Events.LocalBuffChange(buff,isNew)

end

-- Status Change --
function Events.LocalStatusChange(status,isNew)

end
