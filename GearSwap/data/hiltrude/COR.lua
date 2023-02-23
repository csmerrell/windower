include('_Globals/Globals.lua')
include('COR/Sets.lua')
include('COR/Events.lua')
include('COR/Commands.lua')
include('COR/Utils.lua')
include('COR/Bot.lua')

Utils.SetMacroPage(1,2)
Globals.Fashion = 2
send_command('wait 1;input /lockstyleset '..Globals.Fashion)
