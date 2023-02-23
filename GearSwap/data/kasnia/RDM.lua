include('_Globals/Globals.lua')
include('RDM/Sets.lua')
include('RDM/Events.lua')
include('RDM/Commands.lua')
include('RDM/Utils.lua')

Utils.SetMacroPage(1,5)
Globals.Fashion = 100
send_command('wait 1;input /lockstyleset '..Globals.Fashion)
