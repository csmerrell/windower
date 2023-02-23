include('_Globals/Globals.lua')
include('BLU/Sets.lua')
include('BLU/Events.lua')
include('BLU/Commands.lua')
include('BLU/Utils.lua')
include('BLU/Bot.lua')

blueMap = {'PhysMag','Magical','Healing','SkillBasedBuff','Buff'}

blueMap.PhysMag = {
    'Bilgestorm','Heavy Strike','Battle Dance','Bloodrake','Death Scissors','Dimensional Death',
    'Empty Thrash','Quadrastrike','Sinker Drill','Spinal Cleave',
    'Uppercut','Vertical Cleave','Amorphic Spikes','Asuran Claws','Barbed Crescent','Claw Cyclone','Disseverment',
    'Foot Kick','Frenetic Rip','Goblin Rush','Hysteric Barrage','Paralyzing Triad',
    'Seedspray','Sickle Slash','Smite of Rage','Terror Touch','Thrashing Assault',
    'Vanity Dive','Body Slam','Cannonball','Delta Thrust','Glutinous Dart','Grand Slam',
    'Power Attack','Quad. Continuum','Sprout Smack','Sub-zero Smash','Benthic Typhoon','Feather Storm','Helldive','Hydro Shot','Jet Stream',
    'Pinecone Bomb','Spiral Spin','Wild Oats','Mandibular Bite','Queasyshroom','Ram Charge','Screwdriver','Tourbillion',
    'Bludgeon','Final Sting',
}

-- Magical Spells --

blueMap.Magical = {
    'Blastbomb','Blazing Bound','Bomb Toss','Cursed Sphere','Dark Orb','Death Ray',
    'Diffusion Ray','Droning Whirlwind','Embalming Earth','Firespit','Foul Waters',
    'Ice Break','Leafstorm','Maelstrom','Rail Cannon','Regurgitation','Rending Deluge',
    'Retinal Glare','Subduction','Tem. Upheaval','Water Bomb','Entomb', 'Spectral Floe',
    'Searing Tempest', 'Dream Flower', 'Silent Storm', 'Anvil Lightning','Acrid Stream',
    'Evryone. Grudge','Magic Hammer','Mind Blast','Eyes On Me','Mysterious Light',
    'Thermal Pulse','Charged Whisker','Gates of Hades','1000 Needles','Absolute Terror',
    'Actinic Burst','Auroral Drape','Awful Eye',
    'Blank Gaze','Blistering Roar','Blood Drain','Blood Saber','Chaotic Eye',
    'Cimicine Discharge','Cold Wave','Corrosive Ooze','Demoralizing Roar','Digest',
    'Dream Flower','Enervation','Feather Tickle','Filamented Hold','Frightful Roar',
    'Geist Wall','Hecatomb Wave','Infrasonics','Jettatura','Light of Penance',
    'Lowing','Mind Blast','Mortal Ray','MP Drainkiss','Osmosis','Reaving Wind',
    'Sandspin','Sandspray','Sheep Song','Soporific','Sound Blast','Stinking Gas',
    'Sub-zero Smash','Venom Shell','Voracious Trunk','Yawn','Bad Breath','Flying Hip Press','Frost Breath','Heat Breath',
    'Hecatomb Wave','Magnetite Cloud','Poison Breath','Radiant Breath','Self-Destruct',
    'Thunder Breath','Vapor Spray','Wind Breath','Blitzstrahl','Frypan','Head Butt','Sudden Lunge','Tail slap','Temporal Shift',
    'Thunderbolt','Whirl of Rage',
}

-- Healing spells
blueMap.Healing = {
    'Healing Breeze','Magic Fruit','Plenilune Embrace','Pollen','Restoral','White Wind',
    'Wild Carrot',
}

-- Buffs that depend on blue magic skill
blueMap.SkillBuff = {
    'Barrier Tusk','Diamondhide','Magic Barrier','Metallic Body','Plasma Charge',
    'Pyric Bulwark','Reactor Cool', 'Barrier Tusk',
}

-- Other general buffs
blueMap.Buff = {
    'Amplification','Animating Wail','Battery Charge','Carcharian Verve','Cocoon',
    'Erratic Flutter','Exuviation','Fantod','Feather Barrier','Harden Shell',
    'Memento Mori','Nat. Meditation','Occultation','Orcish Counterstance','Refueling',
    'Regeneration','Saline Coat','Triumphant Roar','Warm-Up','Winds of Promyvion',
    'Zephyr Mantle'
}


-- Spells that require Unbridled Learning to cast.
unbridled_spells = {
    'Absolute Terror','Bilgestorm','Blistering Roar','Bloodrake','Carcharian Verve',
    'Crashing Thunder','Droning Whirlwind','Gates of Hades','Harden Shell','Polar Roar',
    'Pyric Bulwark','Thunderbolt','Tourbillion','Uproot'
}

Utils.SetMacroPage(1,16)
Globals.Fashion = 97

send_command('wait 1;input //gs equip Idle.General')
send_command('wait 1;input /lockstyleset '..Globals.Fashion)
