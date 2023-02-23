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
    
    if Queue.OnTick and pcall(Queue.OnTick) then
        send_command('wait .5;input //gs c Tick')
    else
        send_command('wait .5;input //gs c Tick')
    end
end

Commands.Tick()
