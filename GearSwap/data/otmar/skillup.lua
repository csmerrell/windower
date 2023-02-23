function aftercast(spell)
    self = windower.ffxi.get_player()
    if not buffactive["Food"] then
        send_command('wait 1.0;input /item \"Seafood Pitaru\" <me>')
    elseif not buffactive["Refresh"] and self.vitals.mp > 50 then
        send_command('wait 3.0;input /ma \"Refresh\" <me>')
    elseif self.vitals.mp < 50 then
        send_command('wait 1.0;input /ja Convert <me>')
    else
        send_command('wait 3.0;input /ma \"Pollen\" <me>')
    end
end
