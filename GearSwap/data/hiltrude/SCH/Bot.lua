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
        self = windower.ffxi.get_mob_by_target('p0')
        otmar = windower.ffxi.get_mob_by_target('p2')
        if otmar.distance > Bot.HealDistance then
            windower.ffxi.run(otmar.x - self.x,otmar.y - self.y)
            Bot.Moving = true
        else
            windower.ffxi.run(false)
            Bot.Moving = false
        end
        if Bot.SemLock <= 0 and not Bot.Moving then
            for i=0,5 do
                pMember = windower.ffxi.get_mob_by_target('p'..i)
                if pMember and pMember.hpp < 50 then
                    send_command('input /ma "Cure III" '..pMember.id)
                    Bot.SemLock = 2.5
                    return
                end
            end
            if not buffactive["Light Arts"] then
                Utils.Input('/ja "Light Arts" <me>')
                Bot.SemLock = .5
            elseif not buffactive["Accession"] and windower.ffxi.get_ability_recasts()[231] < 90 then
                Utils.Input('/ja Accession <me>')
                Bot.SemLock = .5
            elseif not buffactive["Protect"] and buffactive["Accession"] then
                Utils.Input('/ma "Protect V" <me>')
                Bot.SemLock = 2.5
            elseif not buffactive["Perpetuance"] and windower.ffxi.get_ability_recasts()[231] < 110 then
                Utils.Input('/ja Perpetuance <me>')
                Bot.SemLock = .5
            elseif not buffactive["Regen"] and buffactive["Accession"] and buffactive["Perpetuance"] then
                Utils.Input('/ma "Regen V" <me>')
                Bot.SemLock = 2.5
            elseif not buffactive["Phalanx"] and buffactive["Accession"] and buffactive["Perpetuance"] then
                Utils.Input('/ma "Phalanx" <me>')
                Bot.SemLock = 2.5
            elseif not buffactive["Refresh"] and buffactive["Accession"] and buffactive["Perpetuance"] then
                Utils.Input('/ma "Refresh" <me>')
                Bot.SemLock = 2.5
            elseif windower.ffxi.get_mob_by_target('t') and windower.ffxi.get_mob_by_target('t').name == "Apex Eft" then
                Utils.Input('/ma Fire <t>')
                Bot.SemLock = 2.5
            elseif windower.ffxi.get_mob_by_target('bt') and windower.ffxi.get_player().vitals.mpp > 40 then
                Utils.Input('/as Feryja')
                Bot.SemLock = .5
            end
        end
    end
end
