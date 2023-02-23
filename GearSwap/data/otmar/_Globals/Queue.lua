Queue = {}

function Queue.OnTick()
    return nil
end

function Commands.Tick()
    if windower.ffxi.get_player().hpp == 0 then
        Queue.OnTick = function()
            return nil
        end
        Utils.Echo("Bot Disengaged.")
        Bot.Engaged = false
        return
    end

    pcall(recurseTick)
end

function recurseTick()
    if Queue.OnTick then
        Queue.OnTick()
    end
    send_command('wait .5;input //gs c Tick')
end

Commands.Tick()
