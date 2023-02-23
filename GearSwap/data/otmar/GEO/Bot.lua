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
Bot.Concern = 50 --62%
Bot.Critical = 35 --35%
Bot.Cure4 = 500
Bot.Cure3 = 300
Bot.HealDistance = 18 --2' max range
Bot.Moving = false
Bot.SemLock = 0
Bot.Indi = "Frailty"

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
        party = windower.ffxi.get_party()
        self = windower.ffxi.get_player().vitals
        self_pos = windower.ffxi.get_party()['p0'].mob
        kasnia_mob = windower.ffxi.get_party()['p1'].mob
        kasnia = windower.ffxi.get_party()['p1']
        if kasnia_mob.distance > Bot.HealDistance then
            windower.ffxi.run(kasnia_mob.x - self_pos.x,kasnia_mob.y - self_pos.y)
            Bot.Moving = true
        else
            windower.ffxi.run(false)
            Bot.Moving = false
        end
        if Bot.SemLock <= 0 and not Bot.Moving then
            for i=0,5 do
                pMember = windower.ffxi.get_mob_by_target('p'..i)
                if pMember and pMember.hpp < Bot.Critical then
                    send_command('input /ma "Cure IV" '..pMember.id)
                    Bot.SemLock = 2.5
                    return
                end
            end
            if kasnia.hpp < Bot.Concern then
                send_command('input /ma "Cure III" '..kasnia_mob.id)
                Bot.SemLock = 3.5
            elseif self.hpp < Bot.Concern then
                send_command('input /ma "Cure III" <me>')
                Bot.SemLock = 3.5
            elseif windower.ffxi.get_mob_by_target('pet') and windower.ffxi.get_mob_by_target('pet').hpp < 95 and not buffactive["Attack Boost"] then
                Utils.Input('/ja "Full Circle" <me>')
                Bot.SemLock = 2
            -- elseif windower.ffxi.get_mob_by_target('pet') and not buffactive["Magic Evasion Boost"] then
            --     Utils.Input('/ja "Full Circle" <me>')
            --     Bot.SemLock = 2.5
            elseif (self.mpp < 20 or kasnia.mpp < 15) and Bot.Indi ~= "Refresh" then
                Bot.Indi = "Refresh"
                send_command("geo indi refresh")
                send_command("geo entrust kasnia frailty")
            elseif (self.mpp > 90 and kasnia.mpp > 80) and Bot.Indi ~= "Frailty" then
                Bot.Indi = "Frailty"
                send_command("geo indi frailty")
                send_command("geo entrust kasnia refresh")
            elseif windower.ffxi.get_mob_by_target('bt') and windower.ffxi.get_mob_by_target('bt').hpp > 0 then
                Utils.Input('/ma "Fire" <bt>')
                Bot.SemLock = 3.5
            end
        end
    end
end