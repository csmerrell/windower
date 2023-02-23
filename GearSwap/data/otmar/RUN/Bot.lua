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
Bot.Concern = 80 --80%
Bot.Critical = 50 --50%
Bot.Cure4 = 900
Bot.Cure3 = 500
Bot.HealDistance = 20 --2' max range
Bot.Moving = false
Bot.SemLock = 0
Bot.SCSteps = 3
Bot.SCOrder = {'Scourge', 'Resolution', 'Torcleaver'}
Bot.SCIndex = 1
Bot.SCcd = 3.5
Bot.TPReady = false
Bot.Reset = 10

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
    if Bot.SCcd > 0 then
        Bot.SCcd = Bot.SCcd - .5
        Bot.Reset = Bot.Reset - .5
    end

    if Bot.Reset <= 0 then
        Bot.SCIndex = 1
        Bot.TPReady = false
        Bot.SCcd = 0
        Bot.Reset = 10
    end

    self = windower.ffxi.get_party()['p0']
    lanik = windower.ffxi.get_party()['p2']
    if Bot.TPReady and lanik.tp < 1000 then
        Bot.SCIndex = Bot.SCIndex + 1
        if Bot.SCIndex > Bot.SCSteps then
            Bot.SCIndex = 1
        end
        Bot.SCcd = 2.5
        Bot.TPReady = false
        Bot.Reset = 10
    elseif lanik.tp >= 1000 and not Bot.TPReady then
        Bot.TPReady = true
        Bot.Reset = 10
    elseif self.tp > 1500 and Bot.SCIndex == 2 and Bot.SCcd <= 0 then
        Utils.Input('/ws '..Bot.SCOrder[Bot.SCIndex]..' <t>')
        Bot.SCIndex = Bot.SCIndex + 1
        if Bot.SCIndex > Bot.SCSteps then
            Bot.SCIndex = 1
        end
        Bot.SCcd = 2.5
        Bot.Reset = 10
    end
end
