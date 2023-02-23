-- Aggro Rotation Functions --
function Utils.CheckFastCast()
	if buffactive["Valiance"] or buffactive["Vallation"] then
		return true
	else
		if windower.ffxi.get_ability_recasts()[VALIANCE_RECAST_ID] > 0
			and windower.ffxi.get_ability_recasts()[VALLATION_RECAST_ID]  > 0 then
				return true
		else
			activatingFastCast = true
			if Utils.RuneActive() then
				if windower.ffxi.get_ability_recasts()[VALIANCE_RECAST_ID] == 0 then
					send_command('wait 1.0;input /ja \"Valiance\" <me>')
				elseif windower.ffxi.get_ability_recasts()[VALLATION_RECAST_ID] == 0 then
					send_command('wait 1.0;input /ja \"Vallation\" <me>')
				else
					if rotateAggro then
						activatingFastCast = false
					end
				end
			else
				if windower.ffxi.get_ability_recasts()[VALIANCE_RECAST_ID] == 0 then
					self_command('runeUp')
					send_command('wait 1.0;input /ja \"Valiance\" <me>')
				elseif windower.ffxi.get_ability_recasts()[VALLATION_RECAST_ID] == 0 then
					self_command('runeUp')
					send_command('wait 1.0;input /ja \"Vallation\" <me>')
				else
					if rotateAggro then
						activatingFastCast = false
					end
				end
			end
		end
		return false
	end
end

function Utils.RuneActive()
	if buffactive["Ignis"] then
		return true
	elseif buffactive["Gelus"] then
		return true
	elseif buffactive["Flabra"] then
		return true
	elseif buffactive["Tellus"] then
		return true
	elseif buffactive["Sulpor"] then
		return true
	elseif buffactive["Unda"] then
		return true
	elseif buffactive["Lux"] then
		return true
	elseif buffactive["Tenebrae"] then
		return true
	else
		return false
	end
end

function Utils.IsRune(buff)
	if buff == "Ignis" then
		return true
	elseif buff == "Gelus" then
		return true
	elseif buff == "Flabra" then
		return true
	elseif buff == "Tellus" then
		return true
	elseif buff == "Sulpor" then
		return true
	elseif buff == "Unda" then
		return true
	elseif buff == "Lux" then
		return true
	elseif buff == "Tenebrae" then
		return true
	else
		return false
	end
end

function Utils.GetLowestDelaySpell()
	delay = 10000000000
	spellInfo = {}
	for i, spell in ipairs(AggroRotators) do
		val = windower.ffxi.get_spell_recasts()[RecastIDs[spell]] / 100
		-- Utils.Echo('Spell: '..spell..' | Delay: '..val)
		if val < delay then
			delay = val
			spellInfo["Name"] = spell
			spellInfo["Delay"] = val + .5
		end
	end
	return spellInfo
end
