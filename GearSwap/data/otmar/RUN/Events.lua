-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.type == 'JobAbility' then
        if sets.JA[spell.english] then
            equip(sets.Enmity,sets.JA[spell.english])
        end
    end

    if spell.action_type == 'Divine' then
        equip(sets.precast.FC.Divine)
    end

    if spell.action_type == 'Magic' then
        equip(sets.precast.FC)
    end

    if spell.action_type == 'Ninjutsu' then
        equip(sets.precast.FC)
    end

    if spell.skill == 'Enhancing Magic' then
        if sets.precast.FC.Enhancing[spell.english] then
            equip(sets.precast.FC.Enhancing[spell.english])
        else
            equip(sets.precast.FC.Enhancing)
        end
    end

    if spell.english == 'Lunge' or spell.english == 'Swipe' then
        equip(sets.JA['Lunge'])
    end

    if buffactive['Tenebrae'] and spell.english == 'Lunge' then
        equip(sets.JA.Lunge,{head="Pixie Hairpin +1"})
    end

    if buffactive['Tenebrae'] and spell.english == 'Swipe' then
        equip(sets.JA.Lunge,{head="Pixie Hairpin +1"})
    end
end

-- Midcast --

function Events.LocalMidcast(spell, act)
    if spell.english == 'Phalanx' then
        equip(sets.Utility.Phalanx)
    end

    if spell.english == 'Flash'
		or spell.english == 'Foil'
		or spell.english == 'Jettatura'
		or spell.english == 'Blank Gaze' then
			equip(sets.Enmity)
    end

    if spell.english == 'Regen IV' then
        equip(sets.precast.FC.Enhancing)
    end

    if spell.type == 'JobAbility' then
		equip(sets.Enmity)
        if sets.JA[spell.english] then
            equip(sets.JA[spell.english])
        end
    end

    if spell.skill == 'Enhancing Magic' then
        if sets.precast.FC.Enhancing[spell.english] then
            equip(sets.precast.FC.Enhancing[spell.english])
        else
            equip(sets.precast.FC.Enhancing)
        end
    end

    if spell.english == 'Lunge' or spell.english == 'Swipe' then
        equip(sets.JA['Lunge'])
        if spell.element == world.weather_element or spell_element == world.day_element then
            equip(sets.JA['Lunge'],sets.Obi[spell.element])
        end
    end

	if spell.english == 'Flash' or spell.english == 'Foil' or spell.english == 'Jettatura' then
		equip(sets.Enimty)
	end

    if buffactive['Tenebrae'] and spell.english == 'Lunge' then
        equip(sets.JA.Lunge,{head="Pixie Hairpin +1"})
    end

    if buffactive['Tenebrae'] and spell.english == 'Swipe' then
    	equip(sets.JA.Lunge,{head="Pixie Hairpin +1"})
    end

end

-- Aftercast --
function Events.LocalAftercast(spell,act)
    if spell.skill == 'Enhancing Magic' then
        if sets.precast.FC.Enhancing[spell.english] then
            equip(sets.precast.FC.Enhancing[spell.english])
        else
            -- Utils.Echo('hello')
            equip(sets.precast.FC.Enhancing)
        end
    end
end


-- Buff Change --
function Events.LocalBuffChange(buff,isNew)
	if buff == "Valiance" or buff == "Vallation" then
		if activatingFastCast and isNew then
			activatingFastCast = false
			if rotateAggro then
				self_command("rotationTick")
			end
		end
	end

	if Utils.IsRune(buff) and not isNew then
		if rotateAggro then
			self_command('queueCommand runeUp')
		end
	end

end

-- Status Change --
function Events.LocalStatusChange(status,isNew)
    if not player.status == 'Engaged' then
		rotateAggro = false
		commandQueue = {}
        Bot.SCIndex = 1
    end

    if buffactive['Battuta'] and new == 'Engaged' then
        --equip{feet="Futhark Boots +1"}
    end

end
