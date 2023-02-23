include('_Globals/Globals.lua')
include('RUN/Sets.lua')
include('RUN/Events.lua')
include('RUN/Commands.lua')
include('RUN/Utils.lua')
include('RUN/Bot.lua')

Elements = {
	Fire = "Ignis",
	Ice = "Gelus",
	Wind = "Flabra",
	Earth = "Tellus",
	Thunder = "Sulpor",
	Water = "Unda",
	Light = "Lux",
	Dark = "Tenebrae"
}
CurrentElement = "Fire"

WeaponSkills = {
	GS = {
		"Resolution",
		"Dimidiation"
	},
	Sword = {
		"Savage Blade",
		"Requiescat",
		"Sanguine Blade",
		"Swift Blade"
	}
}
WS_Set = WeaponSkills.GS
WS_Index = 1



rotateAggro = false
castOnce = false
AR = {}
AR.Default = {
	"Flash",
	"Foil"
}
AR.BLU = {
	"Flash",
	"Foil",
	"Jettatura",
	"Blank Gaze"
}
RecastIDs = {}
RecastIDs['Flash'] = 112
RecastIDs['Foil'] = 840
RecastIDs['Jettatura'] = 575
RecastIDs['Blank Gaze'] = 592

AggroIdx = 1;
AggroRotators = AR.Default

if player.sub_job == "BLU" then
	AggroRotators = AR.BLU
end

commandQueue = {}

VALIANCE_RECAST_ID = 113
VALLATION_RECAST_ID = 23


Utils.SetMacroPage(1,1)
Globals.Fashion = 1
send_command('wait 1;input /lockstyleset '..Globals.Fashion)

--
-- send_command('wait.5;input //gs equip Wep.GStp')
