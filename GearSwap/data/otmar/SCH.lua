include('_Globals/Globals.lua')
include('SCH/Sets.lua')
include('SCH/Events.lua')
include('SCH/Commands.lua')
include('SCH/Utils.lua')

Elements = {
    Fire = {
        tier1="Fire", tier2="Fire II", tier3="Fire III", tier4="Fire IV", tier5="Fire V", tier6="Fire VI",
        helix="Pyrohelix", helix2="Pyrohelix II", ga1="Firaga", ga2="Firaga II", ga3="Firaga III", ga4="Firaga IV",
        dot="Burn", storm="Firestorm", storm2="Firestorm II"
    },
    Water = {
        tier1="Water", tier2="Water II", tier3="Water III", tier4="Water IV", tier5="Water V", tier6="Water VI",
        helix="Hydrohelix", helix2="Hydrohelix II", ga1="Waterga", ga2="Waterga II", ga3="Waterga III", ga4="Waterga IV",
        dot="Drown", ailment="Poison", storm="Rainstorm", storm2="Rainstorm II"
    },
    Thunder = {
        tier1="Thunder", tier2="Thunder II", tier3="Thunder III", tier4="Thunder IV", tier5="Thunder V", tier6="Thunder VI",
        helix="Ionohelix", helix2="Ionohelix II", ga1="Thundaga", ga2="Thundaga II", ga3="Thundaga III", ga4="Thundaga IV",
        dot="Shock", ailment="Stun", storm="Thunderstorm", storm2="Thunderstorm II"
    },
    Earth = {
        tier1="Stone", tier2="Stone II", tier3="Stone III", tier4="Stone IV", tier5="Stone V", tier6="Stone VI",
        helix="Geohelix", helix2="Geohelix II", ga1="Stonega", ga2="Stonega II", ga3="Stonega III", ga4="Stonega IV",
        dot="Rasp", ailment="Slow", storm="Sandstorm", storm2="Sandstorm II"
    },
    Wind = {
        tier1="Aero", tier2="Aero II", tier3="Aero III", tier4="Aero IV", tier5="Aero V", tier6="Aero VI",
        helix="Anemohelix", helix2="Anemohelix II", ga1="Aeroga", ga2="Aeroga II", ga3="Aeroga III", ga4="Aeroga IV",
        dot="Choke", storm="Windstorm", storm2="Windstorm II"
    },
    Ice = {
        tier1="Blizzard", tier2="Blizzard II", tier3="Blizzard III", tier4="Blizzard IV", tier5="Blizzard V", tier6="Blizzard VI",
        helix="Cryohelix", helix2="Cryohelix II", ga1="Blizzaga", ga2="Blizzaga II", ga3="Blizzaga III", ga4="Blizzaga IV",
        dot="Frost", ailment="Paralyze", storm="Hailstorm", storm2="Hailstorm II"
    },
    Dark = {
        tier1="Blizzard", tier2="Blizzard II", tier3="Blizzard III", tier4="Blizzard IV", tier5="Blizzard V", tier6="Blizzard VI",
        helix="Noctohelix", helix2="Noctohelix II", ga1="Blizzaga", ga2="Blizzaga II", ga3="Blizzaga III", ga4="Blizzaga IV",
        dot="Bio", dot2="Bio II", ailment="Blind", storm="Voidstorm", storm2="Voidstorm II"
    },
    Light = {
        tier1="Fire", tier2="Fire II", tier3="Fire III", tier4="Fire IV", tier5="Fire V", tier6="Fire VI",
        helix="Luminohelix", helix2="Luminohelix II", ga1="Firaga", ga2="Firaga II", ga3="Firaga III", ga4="Firaga IV",
        dot="Dia", dot2="Dia II", storm="Aurorastorm", storm2="Aurorastorm II"
    }
}
CurrentElement = 'Fire'


Utils.SetMacroPage(1,2)
Globals.Fashion = 5
send_command('wait 1;input /lockstyleset '..Globals.Fashion)
