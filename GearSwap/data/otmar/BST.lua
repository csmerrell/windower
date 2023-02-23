include('_Globals/Globals.lua')
include('BST/Sets.lua')
include('BST/Events.lua')
include('BST/Commands.lua')
include('BST/Utils.lua')

Utils.SetMacroPage(1,3)
Globals.Fashion = 3
send_command('wait 1;input /lockstyleset '..Globals.Fashion)
