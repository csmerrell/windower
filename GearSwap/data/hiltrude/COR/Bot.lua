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
            if windower.ffxi.get_mob_by_target("bt") then
                if self.vitals.tp > 1460 then
                    Utils.Input('/ws "Savage Blade" <t>')
                    Bot.SemLock = 1.5
                end
            end
        end
    end
end