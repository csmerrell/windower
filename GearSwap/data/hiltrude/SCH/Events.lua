-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.action_type == 'Enhancing' then
		if sets.precast.FC.Enhancing[spell.english] then
			equip(sets.precast.FC.Enhancing[spell.english])
		else
			equip(sets.precast.FC.Enhancing)
		end
    end

    if spell.action_type == 'Divine' then
        equip(sets.precast.FC.Divine)
    end

    if spell.action_type == 'Magic' then
		if string.find(spell.english, "Cure") then
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
		if world.weather_element == "Light" then
			equip({
				main="Chatoyant Staff",
				waist=Elements["Light"].belt
			})
		end

		if buffactive["Rapture"] then
			equip({
				head="Arbatel Bonnet"
			})
		end
	end

	if spell.skill == "Elemental Magic" then
		equip(sets.Nuking[sets.Nuking.index[NukingIndex]])
		Utils.EquipWeatherBelt(spell)

        if buffactive["Klimaform"] then
            equip({feet="Arbatel loafers +1"})
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
		equip(sets.Enhancing.General)
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
		equip(sets.Wep[sets.Wep.index[Wep_index]])
    end

    if BuffingStorms then
        if not Utils.UseNextStormCommand() then
            BuffingStorms = false
            send_command("wait 2.0;input /echo -- Storm Sequence Complete --")
        end
    end
end


-- Buff Change --
function Events.LocalBuffChange(buff,isNew)
    if buff == "Light Arts"
		or buff == "Addendum: White"
		or buff == "Dark Arts"
		or buff == "Addendum: Black" then
		if isNew then
			Utils.SendToAlt("/echo -- Buff Successful: "..buff.." --")
		end
	end

	if buff == "Klimaform" and not isNew and AutoKlima then
		Utils.Input('/ma Klimaform <me>')

		Utils.SendToAlt("-- WARNING: "..Globals.Self.." attempting to refresh Klimaform --")
		Utils.Echo("-- WARNING: "..Globals.Self.." attempting to refresh Klimaform --")
	end

	if string.find(buff, "storm") and not isNew then
		Utils.SendToAlt("input /echo -- WARNING: "..Globals.Self.."'s Storm Effects have worn off --")
		Utils.Echo("-- WARNING: Party Storm Effects have worn off --")
	end
end

-- Status Change --
function Events.LocalStatusChange(status,isNew)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_index]])
		equip(sets.Wep[sets.Wep.index[Wep_index]])
    end
end
