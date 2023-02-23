-- Precast --

function Events.LocalPrecast(spell, act)
    if spell.english == 'Call Beast' or
        spell.english == 'Bestial Loyalty' then
        equip(sets.Pet[sets.Pet.index[Pet_index]])
    end

    if spell.english == "Fireball" then
        equip(sets.JA.MagicReady)
    elseif spell.type == "Monster" then
        equip(sets.Ready)
    end
end

-- Midcast --

function Events.LocalMidcast(spell, act)
    if spell.english == 'Call Beast' or
        spell.english == 'Bestial Loyalty' then
        if sets.Pet.index[Pet_index] == "Patrick" then
            equip({
                main="Mdomo Axe",
                sub={ name="Kumbhakarna", augments={'Pet: "Mag.Atk.Bns."+16','"Avatar perpetuation cost" -2',}}
            })
        end
        equip(sets.Pet[sets.Pet.index[Pet_index]])
    end

    if spell.english == "Fireball" then
        equip(sets.JA.MagicReady)
    elseif spell.type == "Monster" then
        equip(sets.Ready)
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
