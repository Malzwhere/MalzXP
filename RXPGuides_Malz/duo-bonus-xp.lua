local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo Catchup XP
--#groupid RXP-SRGCE-A1
#name 31-32 Razorfen Kraul
#next 32-33 Excavation Site
#defaultfor Dwarf/Gnome


step
    >>|cRXP_WARN_This is a 3 stop boat, stay on through the Southshore stop|r
    .goto 1437,4.640,57.122
    .zone 1439 >> Take the boat to Darkshore
step
	.goto Darkshore,37.0,44.1
    .home >> Set your Hearthstone to Auberdine
step
    >> Speak to the flight master ontop of the platform
	.goto Darkshore,36.3,45.6
    .fly Ratchet >> Fly to Ratchet
step
    .zone Stranglethorn Vale >> Take the boat to Booty Bay
step
    .goto Stranglethorn Vale,27.4,77.8
    .fp Booty Bay >> Get the Booty Bay Flight Path
step
    .zone The Barrens >> Take the boat to Ratchet
step
    .goto The Barrens,62.370,37.615
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1221 >> Accept Blueleaf Tubers
    .target Mebok Mizzyrix
step
    >>Loot the |cRXP_LOOT_Snufflenose Command Stick|r, |cRXP_LOOT_Snufflenose Owner's Manual|r and |cRXP_LOOT_Crate With Holes|r next to |cRXP_FRIENDLY_Mebok|r
    .collect 6684,1,1221,1 
    .goto The Barrens,62.340,37.607
    .collect 5897,1,1221,1 
    .goto The Barrens,62.332,37.623
    .collect 5880,1,1221,1 
    .goto The Barrens,62.323,37.620
step
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Thalanaar >> Fly to Thalanaar
    .target Bragok
step
    .goto Feralas,89.4,46.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristy Grant|r
    .accept 98155 >> Accept Pristine Pesterhide Pelts
    .target Kristy Grant
step
    .goto Thousand Needles,30.725,24.346
    >>Loot |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] from the ground next to the dwarf's corpse
    .collect 5791,1 
step
    #sticky
    #label Journal
    .use 5791 >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_Henrig Lonebrow's Journal|r] to start the quest|r
    .accept 1100 >> Accept Lonebrow's Journal
step
    #completewith next
    .goto Thousand Needles,8.456,17.953,0
    .goto Feralas,89.50,45.85,50 >> Travel to Thalanaar
step
    #requires Journal
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >> Turn in Lonebrow's Journal
    .target Falfindel Waywarder
step
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1100 >> Turn in Lonebrow's Journal
    .accept 1101 >> Accept The Crone of the Kraul
    .target Falfindel Waywarder
step
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >> Enter Razorfen Kraul
step
    >>Kill |cRXP_ENEMY_Charlga Razorflank|r. Loot her for |cRXP_LOOT_Razorflank's Heart|r
    .complete 1101,1 
    .isOnQuest 1101
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heralath Fallowbrook|r and |cRXP_FRIENDLY_Willix the Importer|r
    .accept 1142 >> Accept Mortality Wanes
    .accept 1144 >> Accept Willix the Importer
    .target Heralath Fallowbrook
    .target Willix the Importer
step
    #completewith next
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 
    .isOnQuest 1142
step
    >>Escort |cRXP_FRIENDLY_Willix the Importer|r through Razorfen Krual
    >>|cRXP_WARN_Ensure you stay close to |cRXP_FRIENDLY_Willix|r otherwise the quest may not complete!|r
    .complete 1144,1 
    .isOnQuest 1144
step
    #completewith next
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 
    .isOnQuest 1142
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willix the Importer|r
    .turnin 1144 >> Turn in Willix the Importer
    .target Willix the Importer
    .isOnQuest 1144
step
    >>Kill all |cRXP_ENEMY_Monsters|r inside of RFK. Loot them for |cRXP_LOOT_Treshala's Pendant|r
    .complete 1142,1 
    .isOnQuest 1142
step
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1101 >> Turn in The Crone of the Kraul
    .target Falfindel Waywarder
    .isOnQuest 1101
step
    >>Kill |cRXP_ENEMY_Pesterhide Snarlers|r. Loot them for their |cRXP_LOOT_Pristine Pesterhide Pelts|r
    .goto Thousand Needles,12.6,15.8
    .complete 98155,1
step
    .goto Feralas,89.4,46.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristy Grant|r
    .turnin 98155 >> Turn in Pristine Pesterhide Pelts
    .accept 98156 >> Accept Packaged Pristine Pelts
    .target Kristy Grant
step
    #optional
    #completewith next
    >>this section is *optional*, don't go far past 32, roughly 20k xp is here
    .goto Thousand Needles,77.782,77.263,100 >> Travel to the Mirage Raceway
step
    #optional
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    >>|cRXP_WARN_Don't accept the other quests yet|r
    .accept 1110 >> Accept Rocket Car Parts
    .target Kravel Koalbeard
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 1104 >> Accept Salt Flat Venom
    .goto Thousand Needles,78.064,77.126 
    .turnin 1179 >> Turn in The Brassbolts Brothers
    .accept 1105 >> Accept Hardened Shells
    .goto Thousand Needles,78.143,77.120 
    .target Fizzle Brassbolts
    .target Wizzle Brassbolts
step
    #optional
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1176 >> Accept Load Lightening
    .target Pozzik
step
    #optional
    #label ABump
    .goto Thousand Needles,81.635,77.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .accept 1175 >> Accept A Bump in the Road
    .target Trackmaster Zherin
step
    #optional
    #optional
    >>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
    >>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
    >>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
    >>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
    >>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
    >>Loot |cRXP_ENEMY_Saltstone Basilisks|r for their |cRXP_LOOT_Scales|r
    >>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
    .complete 1176,1 
    .goto Thousand Needles,87.5,65.6,0
    .complete 1105,1 
    .goto Thousand Needles,82.6,54.8,0
    .complete 1104,1 
    .goto Thousand Needles,71.8,73.4,0
    .complete 1175,1 
    .goto Thousand Needles,73.5,59.9,0
    .complete 1078,1 
    .goto Thousand Needles,73.5,59.9,0
    .complete 1175,2 
    .goto Thousand Needles,77.65,87.34,0
    .complete 1175,3 
    .goto Thousand Needles,77.65,87.34,0
    .complete 1110,1 
    .mob Salt Flats Scavenger
    .mob Salt Flats Vulture
    .mob Sparkleshell Snapper
    .mob Sparkleshell Borer
    .mob Sparkleshell Tortoise
    .mob Saltstone Basilisk
    .mob Saltstone Crystalhide
    .mob Saltstone Gazer
    .mob Scorpid Reaver
    .mob Scorpid Terror
    .isOnQuest 1078
step
    #optional
    >>|cRXP_WARN_Run circles around The Shimmering Flats until all objectives are complete|r
    >>Kill |cRXP_ENEMY_Salt Flats Scavengers|r and |cRXP_ENEMY_Salt Flats Vultures|r. Loot them for their |cRXP_LOOT_Bones|r
    >>Kill |cRXP_ENEMY_Sparkleshell Tortoises|r, |cRXP_ENEMY_Sparkleshell Borers|r and |cRXP_ENEMY_Sparkleshell Snappers|r. Loot them for their |cRXP_LOOT_Shells|r
    >>|cRXP_WARN_Don't go out of your way to collect all|r |cRXP_LOOT_Turtle Meat|r
    >>Kill |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r and |cRXP_ENEMY_Saltstone Gazers|r
    >>Open the |cRXP_PICK_Rocket Car Rubble|r. Loot it for the |cRXP_LOOT_Rocket Car Parts|r
#loop
    #optional
    .goto Thousand Needles,87.5,65.6,0
    .goto Thousand Needles,82.6,54.8,0
    .goto Thousand Needles,73.5,59.9,0
    .goto Thousand Needles,71.8,73.4,0
    .goto Thousand Needles,77.65,87.34,0
    .complete 1176,1 
    .complete 1105,1 
    .complete 1104,1 
    .complete 1175,1 
    .complete 1175,2 
    .complete 1175,3 
    .complete 1110,1 
    .mob Salt Flats Scavenger
    .mob Salt Flats Vulture
    .mob Sparkleshell Snapper
    .mob Sparkleshell Borer
    .mob Sparkleshell Tortoise
    .mob Saltstone Basilisk
    .mob Saltstone Crystalhide
    .mob Saltstone Gazer
    .mob Scorpid Reaver
    .mob Scorpid Terror
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trackmaster Zherin|r
    .goto Thousand Needles,81.635,77.953
    .turnin 1175 >> Turn in A Bump in the Road
    .target Trackmaster Zherin
step
    #optional
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1176 >> Turn in Load Lightening
    .accept 1178 >> Accept Goblin Sponsorship
    .target Pozzik
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r and |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 1104 >> Turn in Salt Flat Venom
    .goto Thousand Needles,78.064,77.126 
    .turnin 1105 >> Turn in Hardened Shells
    .goto Thousand Needles,78.143,77.120 
    .target Fizzle Brassbolts
    .target Wizzle Brassbolts
step
    #optional
    #label TurninShimmering
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1110 >> Turn in Rocket Car Parts
    .accept 1111 >> Accept Wharfmaster Dizzywig
    .accept 5762 >> Accept Hemet Nesingwary
    .target Kravel Koalbeard
step
    #optional
    .isQuestComplete 1221
    #completewith next
    .goto Tanaris,51.01,29.35,150 >> Travel to Tanaris
step
    >> If skipping shimmering flats fly from Thalanaar instead
    .isQuestComplete 1221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
    .goto Tanaris,51.006,29.345
    .fp Tanaris>> Get the Tanaris Flight Path
    .fly Ratchet>> Fly to Ratchet
    .target Bera Stonehammer
step
    .isOnQuest 1221
    .goto The Barrens,62.370,37.615
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 1221 >> Turn in Blueleaf Tubers
    .target Mebok Mizzyrix
step
    .hs >> Hearth to Auberdine
step
    .isOnQuest 1142
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil>> Fly to Teldrassil
    .target Caylais Moonfeather
step
    .isOnQuest 1142
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step
    .isOnQuest 1142
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treshala Fallowbrook|r up stairs
    .turnin 1142 >> Turn in Mortality Wanes
    .goto Darnassus,69.4,67.4
    .target Treshala Fallowbrook
step
    .isQuestTurnedIn 1142
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
    .goto Darnassus,61.777,39.180
    .turnin 1044 >> Turn in Answered Questions
    .target Thyn'tel Bladeweaver
    .isOnQuest 1044
step
    .isQuestTurnedIn 1142
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
step
    .isQuestTurnedIn 1142
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
    .zoneskip Darkshore
]])