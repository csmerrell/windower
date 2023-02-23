function Utils.EquipWeatherBelt(spell)
	if spell.element == world.day_element or spell.element == world.weather_element then
		if not (spell.element == "Dark") then
			if spell.element == "Lightning" then
				belt = Elements.Thunder.belt
			else
				belt = Elements[spell.element].belt
			end
			equip({
				waist=belt
			})

			if buffactive["Klimaform"] then
				equip({
					feet="Arbatel Loafers +1"
				})
			end
		end
	end
end

function Utils.UseNextStormCommand()
	val = StormCommands.Commands[StormCommands.Sequence[StormIdx]]

	if val.storm then
		spells = Elements[CurrentElement]
		send_command('wait '..val.prewait..';input /'..val.type..' "'..spells["storm2"]..'" <'..val.target..'>')
	else
		if val.prewait then
			send_command('wait '..val.prewait..';input /'..val.type..' "'..val.name..'" <'..val.target..'>')
		else
			send_command('input /'..val.type..' "'..val.name..'" <'..val.target..'>')
		end
	end

	if StormIdx < #StormCommands.Sequence then
		StormIdx = StormIdx + 1
		return true
	else
		StormIdx = 1
		return false
	end
end

function Utils.CheckFlags(spell, targetId)
	if AliasLib[spell] then
		spell = AliasLib[spell]
	end

	if Utils.ContainsAbility(AddendumBlackSpells, spell) then
		if not buffactive["Addendum: Black"] then
			if not buffactive["Dark Arts"] then
				send_command('input /ja "Dark Arts" <me>;wait 1.5;input /ja "Addendum: Black" <me>;wait 1.5;input /ma "'..spell..'" '..targetId)
			else
				send_command('input /ja "Addendum: Black" <me>;wait 1.5;input /ma "'..spell..'" '..targetId)
			end
		else
			Utils.Input('/ma "'..spell..'" '..targetId)
		end
		return true
	end

	if Utils.ContainsAbility(DarkArtJAs, spell) then
		if not buffactive["Dark Arts"] then
			send_command('input /ja "Dark Arts" <me>;wait 1.5;input /ja "'..spell..'" <me>')
		else
			Utils.Input('/ja "'..spell..'" <me>')
		end
		return true
	end

	if Utils.ContainsAbility(AddendumWhiteSpells, spell) then
		if not buffactive["Addendum: White"] then
			if not buffactive["Light Arts"] then
				send_command('input /ja "Light Arts" <me>;wait 1.5;input /ja "Addendum: White" <me>;wait 1.5;input /ma "'..spell..'" '..targetId)
			else
				send_command('input /ja "Addendum: White" <me>;wait 1.5;input /ma "'..spell..'" '..targetId)
			end
		else
			Utils.Input('/ma "'..spell..'" '..targetId)
		end
		return true
	end

	if Utils.ContainsAbility(LightArtSpells, spell) then
		if not buffactive["Light Arts"] then
			send_command('input /ja "Light Arts" <me>;wait 1.5;input /ma "'..spell..'" '..targetId)
		else
			Utils.Input('/ma "'..spell..'" '..targetId)
		end
		return true
	end

	if Utils.ContainsAbility(LightArtJAs, spell) then
		if not buffactive["Light Arts"] then
			send_command('input /ja "Light Arts" <me>;wait 1.5;input /ja "'..spell..'" <me>')
		else
			Utils.Input('/ja "'..spell..'" <me>')
		end
		return true
	end

	if Utils.ContainsAbility(TabulaRasaFlags, spell) then
		if not buffactive["Tabula Rasa"] then
			send_command('input /ja "Tabula Rasa" <me>;wait 1.5;input /ma "'..spell..'" '..targetId)
		else
			Utils.Input('/ma "'..spell..'" '..targetId)
		end
		return true
	end

	return false
end
