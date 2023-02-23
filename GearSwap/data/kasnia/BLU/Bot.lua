function Commands.Bot(args)
    Bot.Engage(args)
end

function Commands.Test(args)
    party = windower.ffxi.get_party()
    Utils.Echo("Party?")
    for k,v in pairs(party) do
        Utils.Echo(k)
        -- for j, buff in ipairs(party['p'..i].mob.buffs) do
        --     Utils.Echo(buff)
        -- end
    end
end

Bot = {}
Bot.Engaged = false
Bot.Critical = 45 --45%
Bot.MagicFruit = 600
Bot.SemLock = 0

function Bot.Engage(args)
    if Bot.Engaged then
        Queue.OnTick = function()
            return nil
        end
        Utils.Echo("Bot Disengaged.")
        Bot.Engaged = false
    else
        Queue.OnTick = Bot.OnTick
        Utils.Echo("Bot Engaged.")
        Bot.Engaged = true
    end
end

function Bot.SetConcern(args)

end

function Bot.SetCritical(args)

end

function Bot.AddPriority(args)

end

function Bot.InjectCommand(args)

end


function Bot.OnTick(args)
    if Bot.SemLock > 0 then
        Bot.SemLock = Bot.SemLock - .5
    else
        self = windower.ffxi.get_player()
        if Bot.SemLock <= 0 and not Bot.Moving then
            -- if self.vitals.hpp < Bot.Critical then
            --     Utils.Input('/ma "Magic Fruit <me>')
            --     Bot.SemLock = 2.5
            if not buffactive["Haste"] and not buffactive["Slow"] and Utils.SpellReady(710) then
                if Utils.AbilityReady(184) then
                    Utils.Input("/ja Diffusion <me>")
                    Bot.SemLock = 1
                else
                    Utils.Input('/ma "Erratic Flutter" <me>')
                    Bot.SemLock = 2.5
                end
            elseif not Utils.BuffActive(91) and Utils.SpellReady(700) then
                Utils.Input('/ma "Nat. Meditation" <me>')
                Bot.SemLock = 2.5
            elseif windower.ffxi.get_mob_by_target("bt") then
                if windower.ffxi.get_mob_by_target("bt").hpp >= 92 and Utils.SpellReady(717) then
                    Utils.Input('/ma "Sweeping Gouge" <t>')
                    Bot.SemLock = 2.5
                elseif self.vitals.tp > 1000 then
                    Utils.Input('/ws "Chant du Cygne" <t>')
                    Bot.SemLock = 1.5
                end
            end
        end
    end
end