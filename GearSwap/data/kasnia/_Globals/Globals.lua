-- Set Global Properties --
Globals = {
    Self = "Kasnia",
    Alt = "Hiltrude",
    Alts = {"Hiltrude"},
    Mirrors = {"Hiltrude"},
    FollowTarget = "Otmar",
    IsMirrored = false,
    IsMain = true, --WARNING!!! This prop must be false in all but one character's script, otherwise there will be infinite loops --
    SkillupActive = false
}

Elements = {
	Fire = {},
	Ice = {},
	Wind = {},
	Earth = {},
	Thunder = {},
	Water = {},
	Light = {},
	Dark = {}
}

-- IMPORT LIBS --
include('_Includes/gsReceive.lua')
include('_Globals/Utils.lua')
include('_Globals/Sets.lua')
include('_Globals/Commands.lua')
include('_Globals/Events.lua')
include('_Globals/Queue.lua')
include('_Globals/Autosort.lua')


-- BIND GLOBAL HOTKEYS --

send_command('bind ^f9 gs c ToggleRings')
send_command('bind ^f10 gs c Map')
send_command('bind ^f11 gs c ToggleMisc')
send_command('bind ^f12 gs c ToggleMainMount')

send_command('bind !f9 gs c ToggleIdleSet')
send_command('bind !f10 gs c ToggleTPSet')
send_command('bind !f11 gs c ToggleWepSet')
send_command('bind !f12 tru basic')

-- ON UNLOAD: Unbind all hotkeys --
function file_unload()
    -- send_command('unbind f7')
	-- send_command('unbind f8')
	-- send_command('unbind f9')
	-- send_command('unbind f10')
	-- send_command('unbind f11')
    -- send_command('unbind f12')

    send_command('unbind ~f7')
	send_command('unbind ~f8')
	send_command('unbind ~f9')
	send_command('unbind ~f10')
    send_command('unbind ~f11')
    send_command('unbind ~f12')

    send_command('unbind ^f7')
	send_command('unbind ^f8')
	send_command('unbind ^f9')
	send_command('unbind ^f10')
    send_command('unbind ^f11')
    send_command('unbind ^f12')

    send_command('unbind !f7')
	send_command('unbind !f8')
	send_command('unbind !f9')
	send_command('unbind !f10')
    send_command('unbind !f11')
	send_command('unbind !f12')

    send_command('unbind @f7')
	send_command('unbind @f8')
    send_command('unbind @f9')
    send_command('unbind @f10')
    send_command('unbind @f11')
    send_command('unbind @f12')
end

-- Override gearswap's default set_command function --
function self_command(command)
    commandargs = Utils.Tokenize(command)

    if Commands[commandargs[1]] then
        Commands[commandargs[1]](commandargs)
    elseif Commands[Utils.Capitalize(commandargs[1])] then
        Commands[Utils.Capitalize(commandargs[1])](commandargs)
    else
        Utils.Echo('-- Command "'..commandargs[1]..'" not found --')
    end
end

-- Call Global and Local precasts --
function precast(spell,act)
    Events.GlobalPrecast(spell, act)
    if (Events.LocalPrecast) then 
        Events.LocalPrecast(spell, act)
    end
end

-- Call Global and Local midcasts --
function midcast(spell,act)
    Events.GlobalMidcast(spell, act)
    if (Events.LocalPrecast) then 
        Events.LocalMidcast(spell, act)
    end
end

-- Call Global and Local aftercasts --
function aftercast(spell,act)
    Events.GlobalAftercast(spell, act)
    if (Events.LocalPrecast) then 
        Events.LocalAftercast(spell, act)
    end
end

-- Call Global and Local buff change --
function buff_change(buff,isNew)
    Events.GlobalBuffChange(buff, isNew)
    if (Events.LocalPrecast) then 
        Events.LocalBuffChange(buff, isNew)
    end
end

-- Call Global and Local status change --
function status_change(status,isNew)
    Events.GlobalStatusChange(status, isNew)
    if (Events.LocalPrecast) then 
        Events.LocalStatusChange(status, isNew)
    end
end
