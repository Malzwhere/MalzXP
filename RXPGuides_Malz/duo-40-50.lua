local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 40-40 Desolace
#next 40-40 Razorfen Downs
#defaultfor Dwarf/Gnome


step << !Warlock
    #optional
    #completewith next
    .goto 1453,41.882,49.433,20 >> Go to Stormwind Harbor
step << !Warlock
    .goto 1453,22.559,56.108
    .zone 1439 >> Take the boat to Darkshore
step << !Warlock
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Desolace >> Fly to Desolace
    .target Caylais Moonfeather
step << Warlock
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Booty Bay >> Fly to Booty Bay
    .target Dungar Longdrink
step << Warlock
    .zone The Barrens >> Take the boat to Ratchet
step << Warlock
    .goto The Barrens,62.627,35.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 4487 >> Turn in Summon Felsteed
    .accept 4490 >> Accept Summon Felsteed
    .turnin 4490 >> Turn in Summon Felsteed
    .target Strahad Farsan
step << Warlock
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Desolace >> Fly to Desolace
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
    .goto Desolace,66.275,6.554
    .home >> Set your Hearthstone to Nijel's Point
    .target Innkeeper Lyshaerya
step
    #completewith next
    .goto Desolace,47.83,61.82,90 >> Travel to |cRXP_FRIENDLY_Hornizz|r at the Kodo Graveyard
step
    .goto Desolace,47.830,61.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .accept 6134 >> Accept Ghost-o-plasm Round Up
    .target Hornizz Brimbuzzle
step
    .goto Desolace,36.234,79.245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1373 >> Turn in Ongeku
    .accept 93034 >> Accept Valley of Bones
    >>You will need to be honored for this step, supposedly there's a repeatable quest if necessary otherwise farm Magram Centaur
    .target Uthek the Wise
step
    .goto Desolace,58.4,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93034 >> Turn in Valley of Bones
    .accept 93037 >> Accept Outing Outcasts
    .accept 93035 >> Accept Ravaging Ravagers
    .target Nerlokh
step
    #sticky
    #label pathRavagers
    >>Kill |cRXP_ENEMY_Undead Ravagers|r, do not focus this as primary objective
    .complete 261,1 
    .mob Undead Ravager
step
    .goto Desolace,64.30,81.96,70,0
    .goto Desolace,64.00,91.70,70,0
    .goto Desolace,59.91,89.42,70,0
    .goto Desolace,64.00,91.70
    >>Kill |cRXP_ENEMY_Undead Ravagers|r and |cRXP_ENEMY_Outcast Necromancers|r
    .complete 93035,1
    .complete 93037,1
    .mob Undead Ravager
step
    .goto Desolace,64.00,91.70
    >>|cRXP_WARN_Use the|r |T132763:0|t[Crate of Ghost Magnets] |cRXP_WARN_at the Valley of Bones between the two giant skeleton remains|r
    >>Kill |cRXP_ENEMY_Magrami Spectres|r that spawn from it. Loot them for their |cRXP_LOOT_Ghost-o-plasms|r
    .complete 6134,1 
    .mob Magrami Spectre
step
    .goto Desolace,58.4,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93037 >> Turn in Outing Outcasts
    .turnin 93035 >> Turn in Ravaging Ravagers
    .accept 93041 >> Accept Facing the Truth
    .target Nerlokh
step
    >>Quest text says that there should be a skull to loot in "the maws of one of the goliath's skeletons"
    .complete 93041,1
step
    .goto Desolace,36.234,79.245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 93041 >> Turn in Facing the Truth
    .accept 93044 >> Accept A Cleansing Cry
    .target Uthek the Wise
step
    .goto Desolace,39.1,95.5
    >> Apparently in a cave to the south
    .complete 93044,1
    .complete 93044,2
step
    .goto Desolace,36.234,79.245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 93044 >> Turn in A Cleansing Cry
    .accept 93045 >> Accept Test Your Theory
    .target Uthek the Wise
step
    >> The ritual site should be in a pond to the east
    .complete 93045,1
step
    .goto Desolace,58.4,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93045 >> Turn in Test Your Theory
    .accept 93058 >> Accept Saving Our Own
    .accept 93062 >> Accept Bone Burying
    .target Nerlokh
step
    .complete 93058,1
    .complete 93062,1
step
    .goto Desolace,58.4,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93058 >> Turn in Saving Our Own
    .turnin 93062 >> Turn in Bone Burying
    .accept 93122 >> Accept Checking Things Out
    .target Nerlokh
step
    .complete 93122,1
step
    .goto Desolace,58.4,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nerlokh|r
    .turnin 93122 >> Turn in Checking Things Out
    .accept 93128 >> Accept Khan Jehn
    .target Nerlokh
step
    .goto Desolace,66,80.4
    >>Kill |cRXP_ENEMY_Khan Jehn|r
    .complete 93128,1
step
    .goto Desolace,36.234,79.245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 93128 >> Turn in Khan Jehn
    .target Uthek the Wise
step
    +Make sure to check the Gelkis Camp as well as Shen'dralas for any relevant quests at this point
step
    .goto Desolace,47.830,61.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6134 >> Turn in Ghost-o-plasm Round Up
    .target Hornizz Brimbuzzle
step
    .hs >> Hearth to Nijel's Point
step
    .goto Desolace,66.519,7.907
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
    .turnin 261 >> Turn in Down the Scarlet Path
    .accept 1052 >> Accept Down the Scarlet Path
    .target Brother Anton
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 40-40 Razorfen Downs
#next 40-41 Scarlet Monastery
#defaultfor Dwarf/Gnome


step
    .goto Desolace,64.66,10.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
    .fly Thalanaar >> Fly to Thousand Needles
    .target Baritanas Skyriver
step
    .goto The Barrens,49.255,93.077,0
    .goto The Barrens,49.255,93.077,30,0
    .goto 1414,53.26,71.18
    .subzone 722,2 >> Enter Razorfen Downs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belnistrasz|r
    >>|cRXP_WARN_Take the left path and stick left the entire way until you reach The Murder Pens to get to|r |cRXP_FRIENDLY_Belnistrasz|r
    >>|cRXP_WARN_Do not accept Extinguishing the Idol until the rest of your party is ready as this begins the escort. Auto accept has been turned off for this step|r
    .accept 3523 >> Accept Scourge of the Downs
    .turnin 3523 >> Turn in Scourge of the Downs
    .accept 3525,1 >> Accept Extinguishing the Idol
    .target Belnistrasz
step
    >>Follow and protect |cRXP_FRIENDLY_Belnistrasz|r during his ritual
    .complete 3525,1 
    .target Belnistrasz
    .isOnQuest 3525
step
    >>Click |cRXP_PICK_Belnistrasz's Brazier|r
    .turnin 3525 >> Turn in Extinguishing the Idol
step
    >>Kill |cRXP_ENEMY_Amnennar the Coldbringer|r
    .complete 3636,1 
    .isOnQuest 3636
step
    .hs >> Hearth to Nijel's Point
    >> If on CD can walk out
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
    .goto Feralas,89.497,45.853
    .fly Ratchet >> Fly to Ratchet
    .target Thyssiana
    .zoneskip Desolace
step
    .goto Desolace,64.66,10.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
    .fly Ratchet >> Fly to Ratchet
    .target Baritanas Skyriver
step
    .zone Stranglethorn Vale >> Take the boat to Booty Bay
step
    +Check for good, doable quests to do while here in STV, maybe pirates + riddle?
step
    .goto StormwindClassic,39.592,27.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 3636 >> Turn in Bring the Light
    .target Archbishop Benedictus
step
    .goto StormwindClassic,64.328,20.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .turnin 1448 >>Turn in In Search of The Temple
    .accept 1449 >>Accept To The Hinterlands
    .target Brohann Caskbelly
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 40-41 Scarlet Monastery
#next 41-42 Riverglades
#defaultfor Dwarf/Gnome


step
    #sticky
    +Consider doing Arathi Highlands elite quests at this point for some extra EXP
step
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Enter the Deeprun Tram
step
    >> |cRXP_WARN_CRAFT ON TRAM
    .zone Ironforge >> Take the Deeprun Tram to Ironforge
step
    .goto 1455,18.564,51.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
    .goto Ironforge,74.980,12.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .accept 1050 >> Accept Mythology of the Titans
    .target Librarian Mae Paledust
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Southshore >> Fly to Southshore
    .target Gryth Thurden
step
    .goto Hillsbrad Foothills,51.4,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .target Raleigh the Devout
    .turnin 1052 >> Turn in Down the Scarlet Path
    .accept 1053 >> Accept In the Name of the Light
step
    .goto Alterac Mountains,10,63.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magus Olvek|r
    .target Magus Olvek
    .accept 96800 >> Accept Past Due
step
    .goto Alterac Mountains,14.2,59.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver|r
    .turnin 602 >> Turn in Magical Analysis
    .timer 6,Magical Analysis RP
    .accept 603 >> Accept Ansirem's Key
    .target Archmage Ansirem Runeweaver
step
    +Complete Scarlet Monastery
    .complete 96800,1
    .complete 1050,1
    .complete 1053,1
    .complete 1053,2
    .complete 1053,3
    .complete 1053,4
step   
    .hs >> Hearth to Ironforge
step
    .goto Ironforge,74.980,12.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .turnin 1050 >> Turn in Mythology of the Titans
    .target Librarian Mae Paledust
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Southshore >> Fly to Southshore
    .target Gryth Thurden
step
    .goto Hillsbrad Foothills,51.4,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raleigh the Devout|r
    .target Raleigh the Devout
    .turnin 1053 >> Turn in In the Name of the Light
step
    .goto Alterac Mountains,10,63.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magus Olvek|r
    .target Magus Olvek
    .turnin 96800 >> Turn in Past Due
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 41-42 Riverglades
#next 42-43 Badlands
#defaultfor Dwarf/Gnome


step
    >>Travel to Redridge
    .goto 1433,26.035,58.614
step
    +Riverglades quests to lvl 42
    .xp 42
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 42-43 Badlands
#next 43-44 Riverglades
#defaultfor Dwarf/Gnome


step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 2398 >> Accept The Lost Dwarves
    .target Prospector Stormpike
step
    #label IFUldaAccept
    .goto Ironforge,74.179,9.371
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .accept 1360 >> Accept Reclaimed Treasures
    .target Krom Stoutarm
step
    +If the dalaran port is available, take it to turn in southshore SM quest, otherwise tram -> flight
step
    +Stop by the ironforge auction house and check for gyro, frost oil, patterned bronze bracers, invis pot + "Healing Potion"
step
    .zone Badlands >> Travel to the Badlands through Loch Modan
step
    +Complete quests in the Badlands, this is your chance to do the outer Uldaman quests and all prequests
    >> Get as much XP here as feels good, Feralas will be a little tight
    .xp 42
step
    .goto Loch Modan,36.50,48.35,15,0
    .goto Loch Modan,37.067,49.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .accept 2500 >> Accept Badlands Reagent Run
    .target Ghak Healtouch
step
    #completewith next
    .goto Loch Modan,65.93,65.62,80 >> Travel to Ironband's Excavation Site
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 707 >> Turn in Ironband Wants You!
    .target Prospector Ironband
    .accept 738 >> Accept Find Agmond
step
    #completewith EnterBandlands
    .goto Loch Modan,47.04,79.27,0
    .goto Loch Modan,46.71,76.90,65,0
    .goto Badlands,49.23,7.80
    .zone Badlands >> Travel to Badlands
step
    #completewith StudyR
    >>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
    >>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 2500,1 
    .collect 3404,4,703,1 
    .complete 2500,2 
    .mob Starving Buzzard
    .mob Buzzard
    .mob Crag Coyote
    .mob Feral Crag Coyote
    .mob Rabid Crag Coyote
    .mob Elder Crag Coyote
step
    #label EnterBandlands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r and |cRXP_FRIENDLY_Sigrun Ironhew|r
    .accept 719 >> Accept A Dwarf and His Tools
    .goto Badlands,53.421,43.393
    .accept 718 >> Accept Mirages
    .goto Badlands,53.802,43.301
    .target Prospector Ryedol
    .target Sigrun Ironhew
step
    #completewith next
    .goto Badlands,53.20,30.57,0
    .goto Badlands,43.46,30.54,0
    >>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
    .complete 719,1
    .mob Shadowforge Tunneler
    .mob Shadowforge Darkweaver
    .mob Shadowforge Chanter
    .mob Shadowforge Warrior
step
    .goto Badlands,53.027,33.944
    >>Click the |cRXP_PICK_Crumpled Map|r on the ground
    .accept 720 >> Accept A Sign of Hope
step
    .goto Badlands,53.20,30.57,40,0
    .goto Badlands,43.46,30.54,40,0
    .goto Badlands,53.20,30.57,40,0
    .goto Badlands,43.46,30.54
    >>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
    .complete 719,1
    .mob Shadowforge Tunneler
    .mob Shadowforge Darkweaver
    .mob Shadowforge Chanter
    .mob Shadowforge Warrior
step
    #completewith next
    .goto Badlands,66.92,23.45,50 >> Travel to Camp Kosh
step
    #sticky
    #completewith OgreScrapMetal
    >>|cRXP_WARN_Ogres and Troggs in Badlands can drop a|r |T237388:0|t[|cRXP_LOOT_Primitive Drawing|r] |cRXP_WARN_which starts a quest. Accept it once you find one. Don't go out of your way to farm it|r
    .accept 78823 >> Accept Terror of the Desert Skies
    .use 211269
step
    .goto Badlands,66.601,21.487,10,0
    .goto Badlands,66.604,22.026,10,0
    .goto Badlands,66.164,21.886,10,0
    .goto Badlands,66.92,23.45
    >>Loot the |cRXP_PICK_Supply Crate|r on the ground
    >>|cRXP_WARN_The |cRXP_PICK_Supply Crate|r can spawn in a few locations at Camp Kosh|r
    .complete 718,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r and |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 718 >> Turn in Mirages
    .accept 733 >> Accept Scrounging
    -- .accept 706 >> Accept Fiery Blaze Enchantments
    .goto Badlands,53.802,43.301
    .turnin 719 >> Turn in A Dwarf and His Tools
    .turnin 720 >> Turn in A Sign of Hope
    .accept 721 >> Accept A Sign of Hope
    .goto Badlands,53.421,43.393
    .target Prospector Ryedol
    .target Sigrun Ironhew
-- step
--     .goto Badlands,42.220,52.693
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
--     .turnin 1106 >> Turn in Martek the Exiled
--     .accept 1108 >> Accept Indurium
--     .target Martek the Exiled
-- step
--     #optional
--     .goto Badlands,42.388,52.927
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
--     >>|cRXP_WARN_Save the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_reward from this quest for killing|r |cRXP_ENEMY_King Bangalash|r |cRXP_WARN_in STV later|r
--     .accept 705 >> Accept Pearl Diving
--     .turnin 705 >> Turn in Pearl Diving
--     .itemcount 4611,9
--     .target Rigglefuzz
-- step
--     .abandon 705 >> Abandon Pearl Diving
step
    .goto Badlands,42.388,52.927
    .target Rigglefuzz
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 703 >> Accept Barbecued Buzzard Wings
    .accept 2418 >> Accept Power Stones
    >> only one of you will likely complete power stones
step
    #optional
    .isQuestComplete 703
    .goto Badlands,42.388,52.927
    .target Rigglefuzz
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >> Turn in Barbecued Buzzard Wings
step
    .goto Badlands,61.939,54.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
    .accept 732 >> Accept Tremors of the Earth
    .target Garek
-- step
--     .goto Badlands,68.71,52.68,60,0
--     .goto Badlands,75.10,66.54,60,0
--     .goto Badlands,81.90,31.65
--     >>Kill |cRXP_ENEMY_Scalding Whelps|r. Loot them for the |cRXP_LOOT_Black Drake's Heart|r
--     >>|cRXP_WARN_You can choose to skip this quest if you wish, as it has a very low drop rate|r
--     .complete 706,1 
--     .mob Scalding Whelp
step
    #completewith BossThogrun
    .line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
    >>Kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for his |cRXP_LOOT_Sign of the Earth|r
    >>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols across all of Badlands|r
    .complete 732,1 
    .unitscan Boss Tho'grun
step
    .goto Badlands,50.892,62.402
    >>Click the |cRXP_PICK_Battered Dwarven Skeleton|r
    .turnin 738 >> Turn in Find Agmond
    .accept 739 >> Accept Murdaloc
step
    #completewith ScrollFragments
    .goto Badlands,49.58,66.66,0
    >>Kill |cRXP_ENEMY_Stonevault Bonesnappers|r and |cRXP_ENEMY_Murdaloc|r. -- Loot them for their |cRXP_LOOT_Indurium|r
    .complete 739,2 
    .complete 739,1 
    -- .complete 1108,1 
    .mob Stonevault Bonesnapper
    .mob Murdaloc
step
    #label ScrollFragments
    -- .isOnQuest 692
    .goto Badlands,51.386,76.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    -- .turnin 692 >> Turn in The Lost Fragments
    .accept 709 >> Accept Solution to Doom
    .target Theldurin the Lost
step
    >>Kill |cRXP_ENEMY_Stonevault Bonesnappers|r and |cRXP_ENEMY_Murdaloc|r. -- Loot them for their |cRXP_LOOT_Indurium|r
    .complete 739,2 
    .goto Badlands,53.0,72.2,40,0
    .goto Badlands,47.2,70.6,40,0
    .goto Badlands,52.4,66.2,40,0
    .goto Badlands,50.36,69.12
    .complete 739,1 
    .goto Badlands,49.58,66.66
    .goto Badlands,53.0,72.2,40,0
    .goto Badlands,47.2,70.6,40,0
    .goto Badlands,52.4,66.2,40,0
    .goto Badlands,50.36,69.12
    .mob Stonevault Bonesnapper
    .mob Murdaloc
-- step
--     .goto Badlands,42.220,52.693
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
--     .turnin 1108 >> Turn in Indurium
--     .timer 15,Indurium RP 
--     .accept 1137 >> Accept News for Fizzle
--     .target Martek the Exiled
step
    #optional
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .target Lotwil Veriatus
    .accept 713 >> Accept Coolant Heads Prevail
    .turnin 713 >> Turn in Coolant Heads Prevail
    .itemcount 3829,1
step
    #optional
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .target Lotwil Veriatus
    .accept 714 >> Accept Gyro... What?
    .turnin 714 >> Turn in Gyro... What?
    .itemcount 4389,1
    .isQuestTurnedIn 713
step
    .goto Badlands,25.948,44.868
    .target Lotwil Veriatus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .accept 710 >> Accept Study of the Elements: Rock
step
    .goto Badlands,21.2,45.8,60,0
    .goto Badlands,18.0,42.8,60,0
    .goto Badlands,13.8,38.6,60,0
    .goto Badlands,21.2,45.8,60,0
    .goto Badlands,18.0,42.8
    >>Kill |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for their |cRXP_LOOT_Small Stone Shards|r and |cRXP_LOOT_Rock Elemental Shards|r
    >>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
    .complete 710,1 
    .complete 2500,3 
    .disablecheckbox
    .mob Lesser Rock Elemental
step
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 710 >> Turn in Study of the Elements: Rock
    .accept 711 >> Accept Study of the Elements: Rock
    .target Lotwil Veriatus
step
    .goto Badlands,14.70,35.30
    >>Kill |cRXP_ENEMY_Rock Elementals|r. Loot them for their |cRXP_LOOT_Large Stone Slabs|r and |cRXP_LOOT_Rock Elemental Shards|r
    >>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
    .complete 711,1 
    .complete 2500,3 
    .disablecheckbox
    .mob Rock Elemental
step
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 711 >> Turn in Study of the Elements: Rock
    .accept 712 >> Accept Study of the Elements: Rock
    .target Lotwil Veriatus
step
    #completewith next
    #label OgreScrapMetal
    >>Kill |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for their |cRXP_LOOT_Scrap Metal|r
    .complete 733,1 
    .mob Dustbelcher Wyrmhunter
    .mob Dustbelcher Mauler
    .mob Dustbelcher Shaman
step
    .goto Badlands,4.33,77.75,70,0
    .goto Badlands,2.70,81.25,50,0
    .goto Badlands,14.68,89.49,70,0
    .goto Badlands,2.70,81.25
    >>Kill |cRXP_ENEMY_Greater Rock Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r and |cRXP_LOOT_Rock Elemental Shards|r
    .complete 712,1 
    .complete 2500,3 
    .mob Greater Rock Elemental
step
    #label StudyR
    .goto Badlands,13.6,74.8
    .goto Badlands,8.6,75.8,55,0
    .goto Badlands,11.0,80.0,55,0
    .goto Badlands,8.0,83.6,55,0
    .goto Badlands,8.6,75.8,55,0
    .goto Badlands,11.0,80.0,55,0
    .goto Badlands,8.0,83.6,55,0
    .goto Badlands,11.0,80.0
    >>Kill |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for their |cRXP_LOOT_Scrap Metal|r
    .complete 733,1 
    .mob Dustbelcher Wyrmhunter
    .mob Dustbelcher Mauler
    .mob Dustbelcher Shaman
step
    >>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
    >>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 2500,1 
    .goto Badlands,49.8,53.0,80,0
    .goto Badlands,56.2,67.2,80,0
    .goto Badlands,50.6,74.8,80,0
    .goto Badlands,60.0,70.6,80,0
    .goto Badlands,60.8,53.4,80,0
    .goto Badlands,55.8,60.2
    .complete 703,1 
    .goto Badlands,49.8,53.0,80,0
    .goto Badlands,56.2,67.2,80,0
    .goto Badlands,50.6,74.8,80,0
    .goto Badlands,60.0,70.6,80,0
    .goto Badlands,60.8,53.4,80,0
    .goto Badlands,55.8,60.2
    .complete 2500,2 
    .goto Badlands,49.0,32.4,80,0
    .goto Badlands,49.2,48.8,80,0
    .goto Badlands,57.8,47.7,80,0
    .goto Badlands,56.6,73.8,80,0
    .goto Badlands,58.8,54.0
    .mob Starving Buzzard
    .mob Buzzard
    .mob Giant Buzzard
    .mob Crag Coyote
    .mob Feral Crag Coyote
    .mob Rabid Crag Coyote
    .mob Elder Crag Coyote
step
    .goto Badlands,25.948,44.868
    .target Lotwil Veriatus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 712 >> Turn in Study of the Elements: Rock
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .target Lotwil Veriatus
    .accept 734 >> Accept This Is Going to Be Hard
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,25.82,44.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .turnin 734 >>Turn in This Is Going to Be Hard
    .target Lucien Tosselwrench
    .accept 777 >>Accept This Is Going to Be Hard
step
    #optional
    .isQuestTurnedIn 714
    .target Lucien Tosselwrench
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .accept 716 >>Accept Stone Is Better than Cloth
    .turnin 716 >>Turn in Stone Is Better than Cloth
    .itemcount 2868,1
step
    #optional
    .isQuestTurnedIn 714
    .target Lucien Tosselwrench
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .accept 715 >>Accept Liquid Stone
    .turnin 715 >>Turn in Liquid Stone
    .itemcount 3823,1
    .itemcount 929,1
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 777 >>Turn in This Is Going to Be Hard
    .target Lotwil Veriatus
    .accept 778 >>Accept This Is Going to Be Hard
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,26.07,46.69
    >>Kill the |cRXP_ENEMY_Fam'Retor Guardian|r. Loot it for its |cRXP_LOOT_Shackles|r
    .complete 778,1 
    .mob Fam'retor Guardian
step
    #optional
    #label LFGUlda
    .isQuestTurnedIn 714
    .goto Badlands,25.948,44.868
    .target Lotwil Veriatus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 778 >>Turn in This Is Going to Be Hard
step
    .goto Badlands,42.388,52.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >> Turn in Barbecued Buzzard Wings
    .target Rigglefuzz
step
    #label BossThogrun
    .goto Badlands,53.802,43.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 733 >> Turn in Scrounging
    .target Sigrun Ironhew
-- step << skip
--     #label BossThogrun
--     .isQuestComplete 733
--     .isQuestComplete 706
--     .goto Badlands,53.802,43.301
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
--     .turnin 733 >> Turn in Scrounging
--     .turnin 706 >> Turn in Fiery Blaze Enchantments
--     .target Sigrun Ironhew
-- step << skip
--     #label BossThogrun
--     .isQuestComplete 733
--     .goto Badlands,53.802,43.301
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
--     .turnin 733 >> Turn in Scrounging
--     .target Sigrun Ironhew
-- step << skip
--     #label BossThogrun
--     .isQuestComplete 706
--     .goto Badlands,53.802,43.301
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
--     .turnin 706 >> Turn in Fiery Blaze Enchantments
--     .target Sigrun Ironhew
step
    #loop
    .line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
    .goto Badlands,36.37,71.63,60,0
    .goto Badlands,39.75,72.36,60,0
    .goto Badlands,43.61,72.61,60,0
    .goto Badlands,51.70,73.52,60,0
    .goto Badlands,61.89,67.68,60,0
    .goto Badlands,54.73,58.52,60,0
    .goto Badlands,48.53,53.02,60,0
    .goto Badlands,45.44,51.70,60,0
    .goto Badlands,41.01,54.95,60,0
    .goto Badlands,35.35,56.99,60,0
    .goto Badlands,28.17,56.44,60,0
    .goto Badlands,19.50,57.77,60,0
    .goto Badlands,16.05,64.35,60,0
    .goto Badlands,12.51,72.73,60,0
    .goto Badlands,12.85,77.42,60,0
    .goto Badlands,14.51,79.15,60,0
    .goto Badlands,21.83,78.10,60,0
    .goto Badlands,25.39,73.02,60,0
    .goto Badlands,32.13,74.04,60,0
    .goto Badlands,36.37,71.63,60,0
    >>Kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for his |cRXP_LOOT_Sign of the Earth|r
    >>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols across all of Badlands|r
    .complete 732,1 
    .unitscan Boss Tho'grun
step
    .goto Badlands,61.939,54.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
    .turnin 732 >> Turn in Tremors of the Earth
    .target Garek
step
    #optional
    #completewith Murdaloc
    .abandon 706 >> Abandon Fiery Blaze Enchantments
step
    .hs >> Hearth to Loch Modan
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 739 >> Turn in Murdaloc
    .accept 704 >> Accept Agmond's Fate
    .target Prospector Ironband
step
    .goto Loch Modan,36.50,48.35,15,0
    .goto Loch Modan,37.067,49.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 2500 >> Turn in Badlands Reagent Run
    .accept 17 >> Accept Uldaman Reagent Run
    .target Ghak Healtouch
step
    .destroy 7846 >> Delete any extra |T134298:0|t[Crag Coyote Fangs] you still have
step
    #label Murdaloc
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 739 >> Turn in Murdaloc
    .target Prospector Ironband
step
    #completewith HammertoeGrez
    .goto 1415,54.46,57.78
    .zone 1415 >> Travel to Uldaman
step
    #sticky
    #label getNecklace
    >>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for the |T133289:0|t[|cRXP_LOOT_Shattered Necklace|r]
    .accept 2198 >> Accept The Shattered Necklace
    .use 7666
step
    #completewith HammertoeGrez
    >>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
    >>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
    .complete 704,1 
    .isOnQuest 704
step
    #completewith HammertoeGrez
    >>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
    .complete 17,1 
    .isOnQuest 17
step
    .goto 1415,54.040,57.665
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 721 >> Turn in A Sign of Hope
    .accept 722 >> Accept Amulet of Secrets
    .target Hammertoe Grez
step
    .goto 1415,54.12,58.05,30,0
    .goto 1415,54.09,58.21
    >>Kill |cRXP_ENEMY_Magregan Deepshadow|r. Loot him for |cRXP_LOOT_Hammertoe's Amulet|r
    >>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
    .complete 722,1 
    .mob Magregan Deepshadow
    .isOnQuest 722
step
    .goto 1415,54.140,58.246
    >>Open the |cRXP_PICK_Ancient Chest|r. Loot it for the |cRXP_LOOT_Tablet of Ryun'eh|r
    >>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
    .complete 709,1 
    .isOnQuest 709
step
    .goto 1415,53.874,58.577
    >>Loot |cRXP_LOOT_Krom Stoutarm's Treasure|r on the ground
    >>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
    .complete 1360,1 
    .isOnQuest 1360
step
    #label HammertoeGrez
    .goto 1415,54.040,57.665
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 722 >> Turn in Amulet of Secrets
    .accept 723 >> Accept Prospect of Faith
    .target Hammertoe Grez
    .isQuestTurnedIn 721
step
    .goto 1415,53.85,57.81,55,0
    .goto 1415,53.63,58.01,55,0
    .goto 1415,54.09,58.03,55,0
    .goto 1415,53.85,57.81
    >>Loot the |cRXP_LOOT_Carved Stone Urns|r and |cRXP_LOOT_Magenta Fungus Caps|r on the ground
    >>|cRXP_WARN_Prioritize the |cRXP_LOOT_Carved Stone Urns|r. This can only be completed OUTSIDE of Uldaman. You can finish the |cRXP_LOOT_Magenta Fungus Caps|r once inside|r
    .complete 704,1 
    .complete 17,1 
    .disablecheckbox
    .isOnQuest 704
    .isOnQuest 17
step
    .goto 1415,53.85,57.81,55,0
    .goto 1415,53.63,58.01,55,0
    .goto 1415,54.09,58.03,55,0
    .goto 1415,53.85,57.81
    >>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
    >>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
    .complete 704,1 
    .isOnQuest 704
step
    #requires getNecklace
    .goto Badlands,51.386,76.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 709 >> Turn in Solution to Doom
    .target Theldurin the Lost
step
    .goto Badlands,53.421,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 723 >> Turn in Prospect of Faith
    .accept 724 >> Accept Prospect of Faith
    .target Prospector Ryedol
    .isQuestTurnedIn 721
step
    .goto Loch Modan,65.93,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 704 >> Turn in Agmond's Fate
    .target Prospector Ironband
step
    .hs >> Hearth to Ironforge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2198 >> Turn in The Shattered Necklace
    .accept 2199 >> Accept Lore for a Price
    .turnin 2199 >> Turn in Lore for a Price
    .accept 2200 >> Accept Back to Uldaman
    .target Talvash del Kissel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r and |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 724 >> Turn in Prospect of Faith
    .accept 725 >> Accept Passing Word of a Threat
    .goto Ironforge,77.539,11.834
    .turnin 725 >> Turn in Passing Word of a Threat
    .accept 726 >> Accept Passing Word of a Threat
    .goto Ironforge,77.343,9.714
    .turnin 726 >> Turn in Passing Word of a Threat
    .accept 762 >> Accept An Ambassador of Evil
    .goto Ironforge,77.539,11.834
    .target Historian Karnik
    .target Advisor Belgrum
    .isQuestTurnedIn 721
step
    .goto Ironforge,74.179,9.371
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1360 >> Turn in Reclaimed Treasures
    .target Krom Stoutarm
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .accept 4487 >> Accept Summon Felsteed
    .target Briarthorn
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
step << Rogue
    .goto 1455,51.6,14.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 43-44 Riverglades
#next 44-45 Drowned City
#defaultfor Dwarf/Gnome


step
    #completewith next
    >>Travel to Redridge
    .goto 1433,26.035,58.614
step
    +Riverglades quests to lvl 44
    .xp 44
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 44-45 Drowned City
#next 45-46 Uldaman
#defaultfor Dwarf/Gnome


step
    .goto Stranglethorn Vale,27.782,77.071
    .target "Sea Wolf" MacKinley
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 606 >> Accept Scaring Shaky
step
    .goto Stranglethorn Vale,27.2,77.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .turnin 603 >> Turn in Ansirem's Key
    .accept 610 >> Accept "Pretty Boy" Duncan
    .target Catelyn the Blade
step
    .goto Stranglethorn Vale,27.618,76.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .accept 348 >> Accept Stranglethorn Fever
    .target Fin Fizracket
step
    .goto Stranglethorn Vale,27.120,77.208
    .target Crank Fizzlebub
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 621 >> Accept Zanzil's Secret
step
    .goto Stranglethorn Vale,28.096,76.217
    .target First Mate Crazz
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .accept 595 >> Accept The Bloodsail Buccaneers
step
    #completewith next
    >>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
    .complete 610,1
    .mob "Pretty Boy" Duncan
step
    .goto Stranglethorn Vale,27.278,69.521
    >>Click the |cRXP_PICK_Bloodsail Correspondence|r on top of the barrel
    .turnin 595 >> Turn in The Bloodsail Buccaneers
    .accept 597 >> Accept The Bloodsail Buccaneers
step
    .goto Stranglethorn Vale,27.40,69.39
    >>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
    .complete 610,1
    .mob "Pretty Boy" Duncan
step
    .goto Stranglethorn Vale,31.88,67.28,70,0
    .goto Stranglethorn Vale,33.46,65.17,70,0
    .goto Stranglethorn Vale,33.43,62.94,70,0
    .goto Stranglethorn Vale,34.27,64.75,70,0
    .goto Stranglethorn Vale,31.88,67.28,70,0
    .goto Stranglethorn Vale,33.46,65.17
    >>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Mistvale Giblets|r and |cRXP_LOOT_Gorilla Fangs|r
    >>|cRXP_WARN_Save the |cRXP_LOOT_Gorilla Fangs|r for a later quest|r
    .complete 606,1 
    .mob Elder Mistvale Gorilla
step
    .addquestitem 2799,348
    .goto Stranglethorn Vale,35.271,60.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Unbagwa|r
    >>|cRXP_WARN_Turn in your 10|r |T134298:0|t[Gorilla Fangs] |cRXP_WARN_to summon|r |cRXP_ENEMY_Mokk the Savage|r
    >>Kill |cRXP_ENEMY_Mokk the Savage|r. Loot him for the |cRXP_LOOT_Heart of Mokk|r
    >>|cRXP_WARN_You'll have to deal with 3 waves of attacking |cRXP_ENEMY_Gorillas|r. Focus killing |cRXP_ENEMY_Mokk the Savage|r then running away on the final wave|r
    >>|cRXP_WARN_This can be difficult to solo. Find a group if required|r
    .complete 348,1 
    .collect 2799,10 
    .disablecheckbox
    .target Witch Doctor Unbagwa
    .mob Mokk the Savage
step
    .goto Stranglethorn Vale,28.096,76.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .turnin 597 >> Turn in The Bloodsail Buccaneers
    .accept 599 >> Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    .goto Stranglethorn Vale,27.618,76.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .turnin 348 >> Turn in Stranglethorn Fever
    .target Fin Fizracket
step
    .goto Stranglethorn Vale,27.283,77.529
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .turnin 610 >> Turn in "Pretty Boy" Duncan
    .accept 611 >> Accept The Curse of the Tides
    .target Catelyn the Blade
step
    .goto Stranglethorn Vale,26.920,77.347
    .target Deeg
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .accept 587 >> Accept Up to Snuff
step
    .goto Stranglethorn Vale,27.173,77.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 599 >> Turn in The Bloodsail Buccaneers
    .accept 604 >> Accept The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .goto Stranglethorn Vale,28.591,75.899
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .accept 576 >> Accept Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto Stranglethorn Vale,26.896,73.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .turnin 606 >> Turn in Scaring Shaky
    .target "Shaky" Phillipe
    .accept 607 >> Accept Return to MacKinley
step
    .goto Stranglethorn Vale,27.782,77.071
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 607 >> Turn in Return to MacKinley
    .accept 609 >> Accept Voodoo Dues
    .target "Sea Wolf" MacKinley
step
    #completewith BloodsailOne
    >>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
    >>|cRXP_WARN_Don't start the quest for this yet|r
    .collect 4098,1,594,1 
step
    #completewith BloodsailOne
    >>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
    .complete 587,1 
    .complete 576,1 
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Mage
    .mob Bloodsail Raider
    .mob Bloodsail Warlock
step
    #label BloodsailOne
    .goto Stranglethorn Vale,31.76,79.45,100,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20,70,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20
    >>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
    >>Loot the |cRXP_LOOT_Bloodsail Charts|r and |cRXP_LOOT_Bloodsail Orders|r. These can spawn randomly at one of the camps or in the small rowboat
    .complete 604,1 
    .complete 604,2 
    .complete 604,3 
    .mob Bloodsail Swashbuckler
step
    #completewith next
    >>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
    >>|cRXP_WARN_Don't start the quest for this yet|r
    .collect 4098,1,594,1 
step
    .goto Stranglethorn Vale,31.76,79.45,100,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20,70,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20
    >>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
    .complete 587,1 
    .complete 576,1 
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Mage
    .mob Bloodsail Raider
    .mob Bloodsail Warlock
step
    #completewith Chucky
    .goto Stranglethorn Vale,39.99,58.24
    .subzone 311 >> Travel to the Ruins of Aboraz
step
    #completewith next
    .goto Stranglethorn Vale,39.99,58.24,0
    .goto Stranglethorn Vale,34.92,51.84,0
    >>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
    .complete 621,1 
    .mob Zanzil Witch Doctor
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Naga
step
    #label Chucky
    .goto Stranglethorn Vale,39.99,58.24
    >>Kill |cRXP_ENEMY_Chucky "Ten Thumbs"|r. Loot him for his |cRXP_LOOT_Huge Ring|r
    .complete 609,3 
    .mob Chucky "Ten Thumbs"
step
    #completewith FinalZanzil
    .goto Stranglethorn Vale,34.92,51.84
    .subzone 477 >> Travel to the Ruins of Jubuwal
step
    #completewith FinalZanzil
    .goto Stranglethorn Vale,39.99,58.24,0
    .goto Stranglethorn Vale,34.92,51.84,0
    >>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
    .complete 621,1 
    .mob Zanzil Witch Doctor
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Naga
step
    #completewith next
    .goto Stranglethorn Vale,34.92,51.84
    >>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
    .complete 609,2 
    .mob Jon-Jon the Crow
step
    .goto Stranglethorn Vale,35.26,51.28
    >>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r. Loot him for his |cRXP_LOOT_Clubbed Foot|r
    .complete 609,1 
    .mob Maury "Club Foot" Wilkins
step
    #label FinalZanzil
    .goto Stranglethorn Vale,34.92,51.84
    >>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
    .complete 609,2 
    .mob Jon-Jon the Crow
step
    .goto Stranglethorn Vale,34.92,51.84,70,0
    .goto Stranglethorn Vale,39.99,58.24,70,0
    .goto Stranglethorn Vale,34.92,51.84,70,0
    .goto Stranglethorn Vale,39.99,58.24,70,0
    .goto Stranglethorn Vale,34.92,51.84
    .goto Stranglethorn Vale,39.99,58.24,0
    >>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
    .complete 621,1 
    .mob Zanzil Witch Doctor
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Naga
step
    .goto Stranglethorn Vale,28.41,46.88,0
    .goto Stranglethorn Vale,31.12,43.17,0
    .goto Stranglethorn Vale,28.41,46.88,55,0
    .goto Stranglethorn Vale,28.71,43.81,55,0
    .goto Stranglethorn Vale,31.12,43.17,55,0
    .goto Stranglethorn Vale,31.76,41.34,55,0
    .goto Stranglethorn Vale,31.12,43.17,55,0
    .goto Stranglethorn Vale,28.71,43.81,55,0
    .goto Stranglethorn Vale,28.41,46.88,55,0
    .goto Stranglethorn Vale,31.12,43.17
    >>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
    >>|cRXP_ENEMY_Tethis|r |cRXP_WARN_will patrol around in this location|r
    .complete 197,1 
    .unitscan Tethis
step
    #completewith next
    .goto Stranglethorn Vale,24.957,23.586
    .cast 3678 >> |cRXP_WARN_Use|r |T135637:0|t[Catelyn's Blade] |cRXP_WARN_on the |cRXP_PICK_Altar of the Tides|r underwater to summon|r |cRXP_ENEMY_Gazban|r
    .use 4027
step
    #label Gazban
    .goto Stranglethorn Vale,24.957,23.586
    >>Kill |cRXP_ENEMY_Gazban|r. Loot him for the |cRXP_LOOT_Stone of the Tides|r
    .complete 611,1 
    .mob Gazban
step
    #completewith PagesTurnIn
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 78823 >> Turn in Terror of the Desert Skies
    .turnin 197 >> Turn in Raptor Mastery
    .accept 208 >> Accept Big Game Hunter
    .goto Stranglethorn Vale,35.658,10.808
    .target Hemet Nesingwary
step
    #label PagesTurnIn
    .goto Stranglethorn Vale,35.662,10.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    >>|cRXP_WARN_Turn in all your|r |T134332:0|t[Green Hills of Stranglethorn - Pages]
    >>|cRXP_WARN_Skip this step if you don't have all the|r |T133677:0|t[Green Hills of Stranglethorn - Chapters]
    .accept 338 >> Accept The Green Hills of Stranglethorn
    .accept 339 >> Accept Chapter I
    .accept 340 >> Accept Chapter II
    .accept 341 >> Accept Chapter III
    .accept 342 >> Accept Chapter IV
    .turnin 339 >> Turn in Chapter I
    .turnin 340 >> Turn in Chapter II
    .turnin 341 >> Turn in Chapter III
    .turnin 342 >> Turn in Chapter IV
    .turnin 338 >> Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
step
    #optional
    #completewith next
    +|cRXP_WARN_Use the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_on |cRXP_ENEMY_King Bangalash|r when he is at 55%|r
    .itemcount 4852,1
    .use 4852
step
    .goto Stranglethorn Vale,38.20,35.57
    >>Kill |cRXP_ENEMY_King Bangalash|r. Loot him for the |cRXP_LOOT_Head of Bangalash|r
    >>|cRXP_ENEMY_King Bangalash|r |cRXP_WARN_will spawn 2 |cRXP_ENEMY_Panthers|r at 50% health. Try to CC him just before 50% if possible so it prevents him from spawning any|r
    .complete 208,1 
    .mob King Bangalash
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 208 >> Turn in Big Game Hunter
    .target Hemet Nesingwary
step
    +check the north stv camp for quests
step
    .hs >> Hearthstone to Booty Bay
step
    +Do the Drowned City
step
    #completewith BBTurnin
    .hs >> Hearth to Booty Bay
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 587 >> Accept Up to Snuff
    .goto Stranglethorn Vale,26.920,77.347
    .goto Stranglethorn Vale,27.000,77.124
    .target Krazek
step
    #label BBTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 611 >> Turn in The Curse of the Tides
    .goto Stranglethorn Vale,27.227,76.870
    .target Baron Revilgaz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r and |cRXP_FRIENDLY_Krazek|r
    .turnin -587 >> Turn in Up to Snuff
    .goto Stranglethorn Vale,26.920,77.347
    .accept 2864 >> Accept Tran'rek
    .goto Stranglethorn Vale,26.943,77.207
    .target Deeg
    .target Krazek
step
    .goto Stranglethorn Vale,27.173,77.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 604 >> Turn in The Bloodsail Buccaneers
    .accept 608 >> Accept The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 580 >> Accept Whiskey Slim's Lost Grog
    .goto Stranglethorn Vale,27.135,77.451
    .turnin 621 >> Turn in Zanzil's Secret
    .goto Stranglethorn Vale,27.120,77.208
    .target Whiskey Slim
    .target Crank Fizzlebub
step
    .goto Stranglethorn Vale,27.782,77.071
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 609 >> Turn in Voodoo Dues
    .accept 2872 >> Accept Stoley's Debt
    .target "Sea Wolf" MacKinley
step
    .goto Stranglethorn Vale,28.591,75.899
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .turnin 576 >> Turn in Keep An Eye Out
    .target Dizzy One-Eye
step
    .hs >> Hearth to Ironforge
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .accept 4487 >> Accept Summon Felsteed
    .target Briarthorn
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
step << Rogue
    .goto 1455,51.6,14.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Wetlands >> Fly to Menethil Harbor
    .target Gryth Thurden
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 45-46 Uldaman
#next 46-47 Tanaris/Feralas
#defaultfor Dwarf/Gnome


step
    .zone Badlands >> Travel to the Badlands
step
    #completewith next
    .goto Badlands,42.87,29.77,60 >> Enter Angor Fortress
step
    .goto Badlands,41.92,26.26,20,0
    .goto Badlands,42.10,28.89
    >>Kill |cRXP_ENEMY_Ambassador Infernus|r. Loot him for |cRXP_LOOT_Ambassador Infernus' Bracer|r
    >>|cRXP_ENEMY_Ambassador Infernus|r |cRXP_WARN_is on the lower level|r
    .complete 762,1 
    .mob Ambassador Infernus
step
    #completewith next
    .goto Badlands,49.52,9.83,0
    .goto Loch Modan,46.78,78.09
    .zone Loch Modan >> Travel to Loch Modan
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
    .goto Ironforge,77.343,9.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 762 >> Turn in An Ambassador of Evil
    .accept 1139 >> Accept The Lost Tablets of Will
    .target Advisor Belgrum
step
    .goto 1415,53.850,57.641
    .subzone 1337,2 >> Zone into Uldaman
step
    #completewith uldaRun
    >>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
    .complete 17,1 
    .isOnQuest 17
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
    .turnin 2398 >> Turn in The Lost Dwarves
    .accept 2240 >> Accept The Hidden Chamber
    .target Baelog
    .isOnQuest 2398
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
    .accept 2240 >> Accept The Hidden Chamber
    .target Baelog
step 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remains of a Paladin|r
    .turnin 2200 >> Turn in Back to Uldaman
    .accept 2201 >> Accept Find the Gems
    .target Remains of a Paladin
step
    #sticky
    #label findGems
    >> Find the gems, 1 near the alliance dwarves, 1 near shadowforge barricade, 1 at grimlok 
    .complete 2201,1
    .complete 2201,2
    .complete 2201,3
step
    #completewith next
    >>Open |cRXP_PICK_Baelog's Chest|r. Loot it for the |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r]
    >>Kill |cRXP_ENEMY_Revelosh|r. Loot him for |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r]
    >>|cRXP_WARN_Note other party members can loot these items, and then combine them to create the|r |T135138:0|t[Staff of Prehistoria]|cRXP_WARN_. Only one person in the group needs to do this|r
    .collect 7740,1,2240,1 
    .collect 7741,1,2240,1 
    .use 7740 
    .use 7741 
    .mob Revelosh
step
    >>|cRXP_WARN_Use the|r |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r] |cRXP_WARN_and|r |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r] |cRXP_WARN_to combine them into the|r |T135138:0|t[Staff of Prehistoria]
    >>|cRXP_WARN_Use the|r |T135138:0|t[Staff of Prehistoria] |cRXP_WARN_on the |cRXP_PICK_Keystone|r to summon|r |cRXP_ENEMY_Ironaya|r
    >>Kill |cRXP_ENEMY_Ironaya|r. |cRXP_WARN_Run into the Hidden Chamber she came from after|r
    .use 7740 
    .use 7741 
    .use 7733 
    .complete 2240,1 
    .isOnQuest 2240
step
    >>Loot the |cRXP_LOOT_Tablet of Will|r in |cRXP_ENEMY_Galgann Firehammer|r's room
    .complete 1139,1
step
    #requires findGems
    .use 7667
    >> Use the Phial of Scrying to turnin
    .turnin 2201 >> Turn in Find the Gems
    .accept 2204 >> Accept Restoring the Necklace
step
    >>Kill |cRXP_ENEMY_Archaedas|r, loot him for his |T134335:0|t[|cRXP_LOOT_Power Source|r]
    .complete 2204,1
    >>Click |cRXP_PICK_The Discs of Norgannon|r
    .accept 2278 >> Accept The Platinum Discs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lore Keeper of Norgannon|r
    .complete 2278,1 
    .skipgossip
    .target Lore Keeper of Norgannon
step
    >>Click |cRXP_PICK_The Discs of Norgannon|r
    .turnin 2278 >> Turn in The Platinum Discs
    .accept 2279 >> Accept The Platinum Discs
step
    #label uldaRun
    +Zone out of Uldaman together as a group to turn in quests in Badlands. The closest exit is the Uldaman backdoor
    .zoneskip Badlands
step
    #completewith UldaLoch
    .goto Badlands,49.52,9.83,0
    .goto Loch Modan,46.78,78.09
    .zone Loch Modan >> Travel to Loch Modan
step
    .goto Loch Modan,36.50,48.35,15,0
    .goto Loch Modan,37.067,49.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 17 >> Turn in Uldaman Reagent Run
    .target Ghak Healtouch
step
    #label UldaLoch
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2204 >> Turn in Restoring the Necklace
    .accept 2361 >> Accept Restoring the Necklace
    .turnin 2361 >> Turn in Restoring the Necklace
    .target Talvash del Kissel
step
    .goto Ironforge,69.930,18.548
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r
    .turnin 2279 >> Turn in The Platinum Discs
    .accept 2439 >> Accept The Platinum Discs
    .target High Explorer Magellas
    .isQuestTurnedIn 2278
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 2240 >> Turn in The Hidden Chamber
    .target Prospector Stormpike
step
    .goto Ironforge,33.874,59.136
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dinita Stonemantle|r
    .turnin 2439 >> Turn in The Platinum Discs
    .target Dinita Stonemantle
    .isQuestTurnedIn 2278
step
    .goto Ironforge,77.343,9.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 1139 >> Turn in The Lost Tablets of Will
    .target Advisor Belgrum
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 46-47 Tanaris/Feralas
#next 47-48 Hinterlands
#defaultfor Dwarf/Gnome


step
    .zone Tanaris >> Return to Tanaris

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .accept 1690 >> Accept Wastewander Justice
    .goto Tanaris,52.462,28.514
    .accept 1707 >> Accept Water Pouch Bounty
    .goto Tanaris,52.486,28.445
    .target Chief Engineer Bilgewhizzle
    .target Spigot Operator Luglunket
step
    .goto Tanaris,52.51,27.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
    .home >> Set your Hearthstone to Gadgetzan
    .target Innkeeper Fizzgrimble
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 3022 >> Accept Handle With Care
    .target Curgle Cranklehop
step
    .goto Tanaris,52.8,27.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
    .accept 5863 >> Accept The Dunemaul Compound
    .target Andi Lynn
step
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2864 >> Turn in Tran'rek
    .target Tran'rek
-- step
--     .goto Tanaris,50.960,27.242
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
--     .turnin 1188 >> Turn in Safety First
--     .accept 1189 >> Accept Safety First
--     .target Shreev
--     .isOnQuest 1188
-- step
-- #completewith NFF
-- .goto Thousand Needles,78.064,77.126
-- .zone Thousand Needles >> Travel to The Shimmering Flats
-- step
-- .goto Thousand Needles,78.143,77.120
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
-- .accept 2770 >> Accept Gahz'rilla
-- .target Wizzle Brassbolts
step
    #completewith PortQ
    >>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
    >>|cRXP_WARN_Kill them en-route to Steamwheedle Port. Don't complete this immediately|r
    .goto Tanaris,60.4,24.6,0
    .goto Tanaris,63.6,31.0,0
    .complete 1690,1 
    .complete 1690,2 
    .complete 1707,1 
    .mob Wastewander Bandit
    .mob Wastewander Thief
step
    .goto Tanaris,66.560,22.265
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
    .accept 8365 >> Accept Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >> Accept Screecher Spirits
    .target Yeh'kinya
step
    #label PortQ
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
    .accept 8366 >> Accept Southsea Shakedown
    .goto Tanaris,67.058,23.891
    .turnin 2872 >> Turn in Stoley's Debt
    .accept 2873 >> Accept Stoley's Shipment
    .goto Tanaris,67.109,23.978
    .target Security Chief Bilgewhizzle
    .target Stoley
step
    #label WastewanderEnd
    .goto Tanaris,60.14,23.42,0
    .goto Tanaris,63.85,29.26,50,0
    .goto Tanaris,63.63,31.66,50,0
    .goto Tanaris,63.27,33.57,50,0
    .goto Tanaris,62.77,30.20,50,0
    .goto Tanaris,63.93,31.60
    >>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
    .complete 1690,1 
    .complete 1690,2 
    .complete 1707,1 
    .mob Wastewander Bandit
    .mob Wastewander Thief
step
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .turnin 1690 >> Turn in Wastewander Justice
    .goto Tanaris,52.462,28.514
    .turnin 1707 >> Turn in Water Pouch Bounty
    .goto Tanaris,52.486,28.445
    .target Chief Engineer Bilgewhizzle
    .target Spigot Operator Luglunket
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
    .goto Tanaris,51.006,29.345
    .fly Thalanaar >> Fly to Thalanaar
    .target Bera Stonehammer
step
    #completewith next
    .goto Feralas,30.239,43.251
    .subzone 1116 >> |cRXP_WARN_Run to Feathermoon Stronghold. Be careful of the |cRXP_ENEMY_Horde Guards|r in Camp Mojache en route|r
    >>|cRXP_WARN_It is always faster to swim across the water than waiting for the boat|r
step
    .goto Feralas,30.238,43.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
    .fp Feathermoon >> Get the Feathermoon Flight Path
    .target Fyldren Moonfeather
step
    .goto Feralas,30.632,42.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 2821 >> Accept The Mark of Quality
    .target Pratt McGrubben
step
    #completewith start
    .goto Feralas,31.043,43.116
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardrack Greenwell|r
    .vendor 7941 >>|cRXP_BUY_Restock on food/water|r
    .target Mardrack Greenwell
step
    .goto Feralas,30.966,43.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shyria|r
    .home >> Set your Hearthstone to Feralas
    .target Innkeeper Shyria
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r and |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 4124 >> Accept The Missing Courier
    .goto Feralas,30.379,46.170
    .accept 2866 >> Accept The Ruins of Solarsal
    .goto Feralas,30.276,46.168
    .target Latronicus Moonspear
    .target Shandris Feathermoon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r and |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .accept 2939 >> Accept In Search of Knowledge
    .goto Feralas,31.777,45.498
    .accept 2982 >> Accept The High Wilderness
    .goto Feralas,31.828,45.611
    .target Troyas Moonbreeze
    .target Angelas Moonbreeze
step
    #label start
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4124 >> Turn in The Missing Courier
    .accept 4125 >> Accept The Missing Courier
    .target Ginro Hearthkindle
step
    .goto Feralas,26.316,52.343
    >>Click the |cRXP_PICK_Solarsal Gazebo|r
    .turnin 2866 >> Turn in The Ruins of Solarsal
    .accept 2867 >> Accept Return to Feathermoon Stronghold
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2867 >> Turn in Return to Feathermoon Stronghold
    .accept 3130 >> Accept Against the Hatecrest
    .goto Feralas,30.276,46.168
    .turnin 3130 >> Turn in Against the Hatecrest
    .accept 2869 >> Accept Against the Hatecrest
    .goto Feralas,30.379,46.170
    .target Latronicus Moonspear
    .target Shandris Feathermoon
step
    .goto Feralas,26.6,52.0,70,0
    .goto Feralas,26.2,55.2,70,0
    .goto Feralas,29.6,53.6,70,0
    .goto Feralas,29.0,50.4,70,0
    .goto Feralas,26.6,53.4
    >>Kill |cRXP_ENEMY_Hatecrest Screamers|r, |cRXP_ENEMY_Hatecrest Wave Riders|r, |cRXP_ENEMY_Hatecrest Warriors|r and |cRXP_ENEMY_Hatecrest Sirens|r. Loot them for their |cRXP_LOOT_Naga Scales|r
    .complete 2869,1 
    .mob Hatecrest Screamer
    .mob Hatecrest Wave Rider
    .mob Hatecrest Warrior
    .mob Hatecrest Siren
step
    .goto Feralas,30.379,46.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2869 >> Turn in Against the Hatecrest
    .accept 2870 >> Accept Against Lord Shalzaru
    .target Latronicus Moonspear
step
    #completewith next
    .goto Feralas,25.49,64.92,40,0
    .goto Feralas,26.13,67.41,30 >> Travel to the Isle of Dread. Enter Shalzaru's Lair
step
    .goto Feralas,28.51,70.59
    >>Kill |cRXP_ENEMY_Lord Shalzaru|r. Loot him for the |cRXP_LOOT_Mysterious Relic|r
    .complete 2870,1 
    .mob Lord Shalzaru
step
    #completewith next
    .goto Feralas,38.72,75.07,40 >> Exit the naga cave and head southeast towards the ocean
    .goto Feralas,41.24,74.54,40 >> Swim to the mainland
step
    .goto Feralas,45.44,64.96
    >>Click on the |cRXP_PICK_Wrecked Row Boat|r in the water
    .turnin 4125 >> Turn in The Missing Courier
    .accept 4127 >> Accept Boat Wreckage
step << Druid
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    .zoneskip Moonglade
step << Druid
    >>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step << Mage
    #completewith next
    .zone Stormwind City >> Teleport to Stormwind City
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
    .target Jennea Cannon
step
    #completewith next
    .hs >> Hearth to Feathermoon Stronghold
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4127 >> Turn in Boat Wreckage
    .accept 4129 >> Accept The Knife Revealed
    .target Ginro Hearthkindle
step
    .goto Feralas,32.447,43.788
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quintis Jonespyre|r atop the tree house
    .turnin 4129 >> Turn in The Knife Revealed
    .timer 12,The Knife Revealed RP
    .accept 4130 >> Accept Psychometric Reading
    .target Quintis Jonespyre
step
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4130 >> Turn in Psychometric Reading
    .accept 4131 >> Accept The Woodpaw Gnolls
    .target Ginro Hearthkindle
step
    .goto Feralas,30.379,46.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2870 >> Turn in Against Lord Shalzaru
    .accept 2871 >> Accept Delivering the Relic
    .target Latronicus Moonspear
step
    .goto Feralas,30.077,45.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
    .turnin 2871 >> Turn in Delivering the Relic
    .target Vestia Moonspear
step
    #completewith next
    .goto Feralas,45.07,44.89,150 >> Swim to the mainland
step
    #completewith spirits
    .goto Feralas,52.05,48.88,0
    .goto Feralas,46.6,39.4,0
    .goto Feralas,57.8,50.8,0
    >>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
    .use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
    .complete 3520,1 
    .skipgossip
    .mob Vale Screecher
    .mob Rogue Vale Screecher
    .target Screecher Spirit
step
    .goto Feralas,55.41,45.54
    .zone 1414 >> |cRXP_WARN_You must explore the Dire Maul zone as a pre-requisite to unlock a quest later on. Get close to the Dire Maul zone border until your General Chat changes to Dire Maul|r
    .link https://youtu.be/ayEKuXSUU2A >> |cRXP_WARN_Click here for video reference|r
step
    .goto Feralas,55.63,56.44,50,0
    .goto Feralas,53.50,55.47
    >>Kill |cRXP_ENEMY_Feral Scar Yetis|r, |cRXP_ENEMY_Enraged Feral Scars|r and |cRXP_ENEMY_Hulking Feral Scars|r. Loot them for their |cRXP_LOOT_Thick Yeti Hides|r
    .complete 2821,1 
    .mob Feral Scar Yeti
    .mob Enraged Feral Scar
    .mob Hulking Feral Scar
step
    .use 8705 >> |cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r] to start the quest|r
    .collect 8705,1,2766 
    .accept 2766 >> Accept Find OOX-22/FE!
    .itemcount 8705,1 
step
    .isOnQuest 2766
    .goto Feralas,53.353,55.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .turnin 2766 >> Turn in Find OOX-22/FE!
    .target Homing Robot OOX-22/FE
step
    .isQuestTurnedIn 2766
    .goto Feralas,53.353,55.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .accept 2767,1 >> Accept Rescue OOX-22/FE!
    .target Homing Robot OOX-22/FE
step
    .isOnQuest 2767
    .goto Feralas,45.67,43.38
    >>Escort the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r to safety
    >>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
    .complete 2767,1
    .target Homing Robot OOX-22/FE
step
    #label Egg
    .goto Feralas,53.657,74.365,0
    .goto Feralas,56.653,75.892,0
    .goto Feralas,56.708,76.724,0
    .goto Feralas,55.906,76.035,0
    .goto Feralas,53.657,74.365,10,0
    .goto Feralas,56.653,75.892,10,0
    .goto Feralas,56.708,76.724,10,0
    .goto Feralas,55.906,76.035,0
    >>Loot a |cRXP_LOOT_Hippogryph Egg|r from a nest
    .collect 8564,1,2741,1 
step
    #label spirits
    >>Kill |cRXP_ENEMY_Gordunni Shamans|r, |cRXP_ENEMY_Gordunni Warlocks|r and |cRXP_ENEMY_Gordunni Brutes|r
    >>|cRXP_WARN_Prioritize killing |cRXP_ENEMY_Gordunni Shamans|r. You may need to kill other |cRXP_ENEMY_Gordunni Ogres|r to force |cRXP_ENEMY_Gordunni Shamans|r to spawn|r
    .complete 2982,2 
    .goto Feralas,59.54,63.13,60,0
    .goto Feralas,58.42,67.08,60,0
    .goto Feralas,59.97,66.14,60,0
    .goto Feralas,60.91,68.55,60,0
    .goto Feralas,59.48,66.77
    .goto Feralas,61.70,73.09,0
    .goto Feralas,59.11,69.93,0
    .complete 2982,1 
    .goto Feralas,59.54,63.13,60,0
    .goto Feralas,58.42,67.08,60,0
    .goto Feralas,59.97,66.14,60,0
    .goto Feralas,60.91,68.55,60,0
    .goto Feralas,59.09,64.45,60,0
    .goto Feralas,61.02,56.10,60,0
    .goto Feralas,61.43,54.30,60,0
    .goto Feralas,59.54,63.13
    .goto Feralas,61.70,73.09,0
    .goto Feralas,59.11,69.93,0
    .complete 2982,3 
    .goto Feralas,59.09,64.45,60,0
    .goto Feralas,61.02,56.10,60,0
    .goto Feralas,61.43,54.30,60,0
    .goto Feralas,61.02,56.10
    .mob Gordunni Shaman
    .mob Gordunni Warlock
    .mob Gordunni Brute
step
    .goto Feralas,53.2,47.2,60,0
    .goto Feralas,58.0,47.8,60,0
    .goto Feralas,60.8,50.8,60,0
    .goto Feralas,55.8,54.0,60,0
    .goto Feralas,58.6,58.8,60,0
    .goto Feralas,60.6,62.2
    .goto Feralas,53.2,47.2,0
    .goto Feralas,58.0,47.8,0
    .goto Feralas,60.8,50.8,0
    .goto Feralas,55.8,54.0,0
    .goto Feralas,58.6,58.8,0
    >>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
    .use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
    .complete 3520,1 
    .skipgossip
    .mob Vale Screecher
    .mob Rogue Vale Screecher
    .target Screecher Spirit
step
    .goto Feralas,66.56,46.87,0
    .goto Feralas,66.56,46.87,30,0
    .goto Feralas,65.945,45.651
    >>|cRXP_WARN_Kill some of the |cRXP_ENEMY_Grimtotem|r around the giant cage containing |cRXP_FRIENDLY_Captured Sprite Darters|r before accepting this escort quest|r
    >>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .accept 2969 >> Accept Freedom for All Creatures
    .target Kindal Moonweaver
    .mob Grimtotem Naturalist
    .mob Grimtotem Raider
    .mob Grimtotem Shaman
step
    .goto Feralas,66.666,46.754
    >>Click the |cRXP_PICK_Cage Door|r to release the |cRXP_FRIENDLY_Captured Sprite Darters|r
    >>Kill any |cRXP_ENEMY_Grimtotem|r that are attacking the |cRXP_FRIENDLY_Captured Sprite Darters|r
    >>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
    .complete 2969,1
    .mob Grimtotem Naturalist
    .mob Grimtotem Raider
    .mob Grimtotem Shaman
    .target Captured Sprite Darter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r and |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .turnin 2969 >> Turn in Freedom for All Creatures
    .goto Feralas,65.945,45.651
    .accept 2970 >> Accept Doling Justice
    .goto Feralas,65.946,45.607
    .target Kindal Moonweaver
    .target Jer'kai Moonweaver
step
    #sticky
    #completewith next
    .goto Feralas,69.6,43.3,0
    >>Head to the marked location west of Camp Mojache. Look for a |cRXP_ENEMY_Dead Diseased Grimtotem Shaman|r laying next to a tree. Next to the corpse you will find a |cRXP_PICK_Grimtotem Chest|r, loot it for |T133291:0|t|cRXP_LOOT_Grimtotem Necklace|r
    .unitscan Dead Diseased Grimtotem Shaman
    >> This may not exist, it is a SoD warlock rune but worth checking as they've added rune quests
step
    #label Grimtotems
    .goto Feralas,66.65,46.58,60,0
    .goto Feralas,68.70,46.91,60,0
    .goto Feralas,69.14,39.10,60,0
    .goto Feralas,66.85,38.80,60,0
    .goto Feralas,69.14,39.10
    .goto Feralas,66.85,38.80,0
    >>Kill |cRXP_ENEMY_Grimtotem Naturalists|r, |cRXP_ENEMY_Grimtotem Raiders|r and |cRXP_ENEMY_Grimtotem Shamans|r
    >>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
    .complete 2970,1 
    .complete 2970,2 
    .complete 2970,3 
    .mob Grimtotem Naturalist
    .mob Grimtotem Raider
    .mob Grimtotem Shaman
step
    #label DolingJustice
    .goto Feralas,65.946,45.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .turnin 2970 >> Turn in Doling Justice
    .accept 2972 >> Accept Doling Justice
    .target Jer'kai Moonweaver
step
    .goto 1444/1,695.400,-4920.300,20 >>Go to the path leading up the hill towards the Woodpaw Den
    >> Warlock rune quest, skip if first step wasn't there
step
    .goto 1444/1,831.200,-4851.000,20 >>Go up the path marked by torches
    >> Warlock rune quest, skip if first step wasn't there
step
    .goto 1444/1,826.500,-4725.100
    >>Stick to the right edge of the camp and go to the |cRXP_ENEMY_Dead Diseased Woodpaw Mystic|r. Next to him you will find a |cRXP_PICK_Woodpaw Bag|r, loot it for a |T135139:0|t|cRXP_LOOT_Broken Woodpaw Staff|r
    .unitscan Dead Diseased Woodpaw Mystic
    >> Warlock rune quest, skip if first step wasn't there
step
    >>Use the |T135139:0|t|cRXP_LOOT_Broken Woodpaw Staff|r to combine it with the |T133291:0|t|cRXP_LOOT_Grimtotem Necklace|r and create a |T135153:0|t|cRXP_LOOT_Diseased Nature Staff|r
    .collect 221976,1 
step
    .goto Feralas,72.6,50.8
    >>Look for a sleeping |cRXP_ENEMY_Diseased Forest Walker|r, use your |T135153:0|t|cRXP_LOOT_Diseased Nature Staff|r to awaken him. Defeat him and loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Pandemic|r]
    .collect 220617,1 
step
    .goto Feralas,73.314,56.311
    >>Click the |cRXP_PICK_Large Leather Backpacks|r on the tree
    .turnin 4131 >> Turn in The Woodpaw Gnolls
    .accept 4135 >> Accept The Writhing Deep
step
    .goto Feralas,73.31,56.30
    .use 11463 >>|cRXP_WARN_Use the |T133628:0|t[|cRXP_LOOT_Undelivered Parcel|r] to start the quest|r
    .collect 11463,1,4281
    .accept 4281 >> Accept Thalanaar Delivery
step
    #completewith next
    .goto Feralas,73.57,63.13,100,0
    .goto Feralas,72.78,64.48,15 >> Enter The Writhering Deep Hive from the lower southwest entrance
step
    .goto Feralas,72.080,63.713
    >>Click the |cRXP_PICK_Zukk'ash Pod|r
    >>19 second RP
    .turnin 4135 >> Turn in The Writhing Deep
    .accept 4265 >> Accept Freed from the Hive
    .timer 19,Freed from the Hive RP
step
    #label Raschal
    .goto Feralas,72.080,63.713
    >>|cRXP_WARN_Wait out the RP|r
    .complete 4265,1
step
    .goto Feralas,89.63,46.56
    .target Falfindel Waywarder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 4281 >> Turn in Thalanaar Delivery
step
    #map Feralas
    #completewith next
    .goto The Barrens,33.57,90.34
    .fly Feathermoon >> Fly to Feathermoon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .turnin 2982 >> Turn in The High Wilderness
    .goto Feralas,31.828,45.611
    .target Angelas Moonbreeze
step
    .goto Feralas,30.632,42.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 2821 >> Turn in The Mark of Quality
    .target Pratt McGrubben
step
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4265 >> Turn in Freed from the Hive
    .accept 4266 >> Accept A Hero's Welcome
    .target Ginro Hearthkindle
step
    .goto Feralas,30.276,46.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 4266 >> Turn in A Hero's Welcome
    .accept 4267 >> Accept Rise of the Silithid
    .target Shandris Feathermoon
step << Hunter
    .goto Feralas,30.645,43.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
    .vendor >>|cRXP_BUY_Buy Ammo if needed|r
    .target Faralorn
step << !Mage !Druid
    .goto Feralas,30.239,43.251
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Fyldren Moonfeather
step << Druid
    .cast 18960 >> Cast Teleport: Moonglade
    .zoneskip Feralas,1
step << Druid
    >>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    >>|cRXP_WARN_Skip this step if you trained earlier|r
    .goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
    .zoneskip Moonglade,1
step << Druid
    .goto Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fly to Darnassus
    .skipgossip
    .timer 153,Flight to Darnassus
    .target Silva Fil'naveth
    .zoneskip Moonglade,1
step << Mage
    #label FeralasEnd
    .goto Feralas,30.239,43.251
    .zone Darnassus >>Teleport to Darnassus
    >>If you don't have |T135755:0|t[Teleport: Darnassus] trained then fly there
    .zoneskip Feralas,1
step << Mage
    .goto Darnassus,39.26,92.84,10,0
    .goto Darnassus,41.833,85.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
    .turnin 4267 >> Turn in Rise of the Silithid
    .target Gracina Spiritmight
    .zoneskip Darnassus,1
step << Mage
    .goto Darnassus,39.094,81.583
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 2972 >> Turn in Doling Justice
    .target Tyrande Whisperwind
    .zoneskip Darnassus,1
step << Mage
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Take the purple portal to Rut'theran Village
    .zoneskip Darnassus,1
step
    .goto Teldrassil,55.497,92.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
    .turnin 3022 >> Turn in Handle With Care
    .accept 3661 >> Accept Favored of Elune?
    .target Erelas Ambersky
step
    .goto Teldrassil,55.09,91.67,10,0
    .goto Teldrassil,55.414,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
    .turnin 2939 >> Turn in In Search of Knowledge
    .target Daryn Lightwind
step
    .goto Teldrassil,55.219,91.454
    >>Click the |cRXP_PICK_Feralas: A History|r book on the ground
    .accept 2940 >> Accept Feralas: A History
step
    .goto Teldrassil,55.414,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
    .turnin 2940 >> Turn in Feralas: A History
    .accept 2941 >> Accept The Borrower
    .target Daryn Lightwind
step
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Mage
    .goto Darnassus,40.599,82.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elissa Dumas|r
    .train 3565 >> Train Teleport: Darnassus
    .target Elissa Dumas
step << Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
    .trainer >> Train your class spells
    .target Jandria
    .zoneskip Darnassus,1
step
    .goto Darnassus,39.26,92.84,10,0
    .goto Darnassus,41.833,85.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
    .turnin 4267 >> Turn in Rise of the Silithid
    .target Gracina Spiritmight
step
    .goto Darnassus,39.094,81.583
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 2972 >> Turn in Doling Justice
    .target Tyrande Whisperwind
step
    .hs >> Hearth to Feralas
step
    .fly Gadgetzan >> Fly to Gadgetzan
step
    .goto Tanaris,52.387,26.968
    >>Click the |cRXP_PICK_Egg-O-Matic|r on the ground
    .turnin 2741 >> Turn in The Super Egg-O-Matic
    .itemcount 8564,1 
step
    +Open your |T132594:0|t[Egg Crate]
    .itemcount 8647,1 
    .use 8647
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .turnin 2941 >> Turn in The Borrower
    .accept 2944 >> Accept The Super Snapper FX
    .target Curgle Cranklehop
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2750 >> Accept A Bad Egg
    .turnin 2750 >> Turn in A Bad Egg
    .target Curgle Cranklehop
    .itemcount 8646,1 
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2749 >> Accept An Ordinary Egg
    .turnin 2749 >> Turn in An Ordinary Egg
    .target Curgle Cranklehop
    .itemcount 8645,1 
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2748 >> Accept A Fine Egg
    .turnin 2748 >> Turn in A Fine Egg
    .target Curgle Cranklehop
    .itemcount 8644,1 
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2747 >> Accept An Extraordinary Egg
    .turnin 2747 >> Turn in An Extraordinary Egg
    .target Curgle Cranklehop
    .itemcount 8643,1
step
    .goto Tanaris,52.462,28.514
    .target Chief Engineer Bilgewhizzle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 1691 >> Accept More Wastewander Justice
step
    .goto Tanaris,52.819,27.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
    .accept 5863 >> Accept The Dunemaul Compound
    .target Andi Lynn
step
    .goto Tanaris,51.835,27.038
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 2781 >> Accept WANTED: Caliph Scorpidsting
    .accept 2875 >> Accept WANTED: Andre Firebeard
step
    .goto Tanaris,51.56,26.75
    .target Tran'rek
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 3362 >> Accept Thistleshrub Valley
step
    .goto Tanaris,50.21,27.48
    .target Senior Surveyor Fizzledowser
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 10 >> Accept The Scrimshank Redemption
step
    .goto Tanaris,51.80,28.66
    .target Marin Noggenfogger
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 2605 >> Accept The Thirsty Goblin
-- step << skip
--     .goto Tanaris,51.05,26.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
--     .turnin 2641 >> Turn in Sprinkle's Secret Ingredient
--     .target Sprinkle
--     .accept 2661 >> Accept Delivery for Marin
-- step << skip
--     .goto Tanaris,51.80,28.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
--     .turnin 2661 >> Turn in Delivery for Marin
--     .target Marin Noggenfogger
--     .accept 2662 >> Accept Noggenfogger Elixir
--     .turnin 2662 >> Turn in Noggenfogger Elixir
-- step << skip
--     #completewith tStart
--     + Make sure you carry 1 stack of noggenfogger with you at all times, buy 2 extra stacks and bank it
-- step << skip
--     .goto Tanaris,51.56,26.75
--     .target Tran'rek
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
--     .turnin 3362 >> Turn in Thistleshrub Valley
--     .isQuestComplete 3362
step
    #label tStart
    .goto Tanaris,52.707,45.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3445 >> Turn in The Sunken Temple
    .accept 3444 >> Accept The Stone Circle
    .target Marvon Rivetseeker
step
    #completewith next
    .goto Tanaris,58.75,39.34,0
    .goto Tanaris,58.72,36.54,0
    .goto Tanaris,60.07,37.31,0
    .goto Tanaris,60.76,32.67,0
    .goto Tanaris,63.57,37.80,0
    .goto Tanaris,63.89,39.86,0
    .goto Tanaris,65.03,39.49,0
    .goto Tanaris,65.41,36.62,0
    >>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
    >>|cRXP_ENEMY_Wastewander Rogues|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
    .complete 1691,1 
    .complete 1691,2 
    .complete 1691,3 
    .mob Wastewander Rogue
    .mob Wastewander Assassin
    .mob Wastewander Shadow Mage
step
    .goto Tanaris,59.4,41.1,60,0
    .goto Tanaris,61.8,38.2,60,0
    .goto Tanaris,63.6,32.0,60,0
    .goto Tanaris,61.0,35.9,60,0
    .goto Tanaris,58.9,39.0,60,0
    .goto Tanaris,63.6,32.0,60,0
    .goto Tanaris,58.9,39.0,60,0
    .goto Tanaris,60.85,37.82
    >>Kill |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Caliph Scorpidsting|r |cRXP_WARN_patrols through Waterspring Field and is accompanied by 2|r |cRXP_ENEMY_Wastewander Rogues|r
    .complete 2781,1 
    .unitscan Caliph Scorpidsting
step
    #label Wastewanders
    .goto Tanaris,58.75,39.34,60,0
    .goto Tanaris,58.72,36.54,60,0
    .goto Tanaris,60.07,37.31,60,0
    .goto Tanaris,60.76,32.67,60,0
    .goto Tanaris,63.57,37.80,60,0
    .goto Tanaris,63.89,39.86,60,0
    .goto Tanaris,65.03,39.49,60,0
    .goto Tanaris,65.41,36.62
    >>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
    .complete 1691,1 
    .complete 1691,2 
    .complete 1691,3 
    .mob Wastewander Rogue
    .mob Wastewander Assassin
    .mob Wastewander Shadow Mage
step
    #completewith next
    .goto Tanaris,68.98,41.63
    .subzone 1336 >> Travel to Lost Rigger Cove
step
    #completewith StoleyShip
    >>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
    >>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
    >>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
    .complete 8366,1 
    .complete 8366,2 
    .complete 8366,3 
    .complete 8366,4 
    .complete 8365,1 
    .collect 9250,1,2876,1 
    .use 9276 
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
step
    #completewith StoleyShip
    .goto Tanaris,73.37,47.14,0
    >>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 2875,1 
    .mob Andre Firebeard
step
    #label StoleyShip
    .goto Tanaris,72.15,46.76
    >>Travel upstairs in the house
    >>Open the |cRXP_PICK_Stolen Cargo|r. Loot it for |cRXP_LOOT_Stoley's Shipment|r
    .complete 2873,1 
step
    #completewith next
    >>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
    >>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
    >>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
    .complete 8366,1 
    .complete 8366,2 
    .complete 8366,3 
    .complete 8366,4 
    .complete 8365,1 
    .collect 9250,1,2876,1 
    .use 9276 
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
step
    .goto Tanaris,73.37,47.14
    >>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 2875,1 
    .mob Andre Firebeard
step
    #label TanarisPirates
    >>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
    >>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]. |cRXP_WARN_Don't go out of your way to farm it|r
    >>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
    .complete 8366,1 
    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92
    .complete 8366,2 
    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92
    .complete 8366,3 
    .goto Tanaris,73.76,47.79,65,0
    .goto Tanaris,74.46,46.85,50,0
    .goto Tanaris,74.62,47.73
    .complete 8366,4 
    .goto Tanaris,75.17,45.84
    .complete 8365,1 
    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92,70,0
    .goto Tanaris,73.76,47.79,65,0
    .goto Tanaris,74.46,46.85,50,0
    .goto Tanaris,74.62,47.73,50,0
    .goto Tanaris,75.17,45.84,60,0
    .goto Tanaris,72.15,46.76
    .collect 9250,1,2876,1 
    .disablecheckbox

    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92,70,0
    .goto Tanaris,73.76,47.79,65,0
    .goto Tanaris,74.46,46.85,50,0
    .goto Tanaris,74.62,47.73,50,0
    .goto Tanaris,75.17,45.84,60,0
    .goto Tanaris,72.15,46.76
    .use 9276 

    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
step
    #completewith console
    >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
    .collect 8623,1,351,1 
    .use 8623
    .accept 351 >> Accept Find OOX-17/TN!
    .itemcount 8623,1
step
    #completewith next
    .goto Tanaris,54.63,70.75,20 >> Enter The Gaping Chasm Hive
step
    #label console
    .goto Tanaris,55.956,71.164
    >>Loot the |cRXP_LOOT_Scrimshank's Surveying Gear|r on the ground
    >>|cRXP_WARN_The |cRXP_LOOT_Scrimshank's Surveying Gear|r is inside of the Hive|r
    .complete 10,1 
step
    .goto Tanaris,60.235,64.714
    .use 8623 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
    >>|cRXP_WARN_Skip this step if you do not have it|r
    .collect 8623,1,351,1 
    .accept 351 >> Accept Find OOX-17/TN
    .itemcount 8623,1
step
    .goto Tanaris,60.235,64.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
    .turnin 351 >> Turn in Find OOX-17/TN!
    .isOnQuest 351
    .target Homing Robot OOX-17/TN
step
    .isQuestTurnedIn 351
    .goto Tanaris,60.235,64.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
    .accept 648,1 >> Accept Rescue OOX-17/TN!
    .target Homing Robot OOX-17/TN
step
    .isOnQuest 648
    .goto Tanaris,66.99,23.14
    >>Escort the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r to safety
    >>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
    .complete 648,1 
    .target Homing Robot OOX-17/TN
step
    #sticky
    #label ScheduleEnd
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
    >>|cRXP_WARN_You may need to accept this after turning in to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and|r |cRXP_FRIENDLY_Stoley|r
    .accept 2876 >> Accept Ship Schedules
    .itemcount 9250,1 
    .use 9250 
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
    .turnin 8366 >> Turn in Southsea Shakedown
    .turnin 2875 >> Turn in WANTED: Andre Firebeard
    .turnin 2876 >> Turn in Ship Schedules
    .goto Tanaris,67.058,23.891
    .turnin 2873 >> Turn in Stoley's Shipment
    .accept 2874 >> Accept Deliver to MacKinley
    .goto Tanaris,67.109,23.978
    .target Security Chief Bilgewhizzle
    .target Stoley
    .itemcount 9250,1 
    .use 9250 
step
    #label SWP
    #optional
    #requires ScheduleEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
    .turnin 8366 >> Turn in Southsea Shakedown
    .turnin 2875 >> Turn in WANTED: Andre Firebeard
    .goto Tanaris,67.058,23.891
    .turnin 2873 >> Turn in Stoley's Shipment
    .accept 2874 >> Accept Deliver to MacKinley
    .goto Tanaris,67.109,23.978
    .target Security Chief Bilgewhizzle
    .target Stoley
step
    .goto Tanaris,66.560,22.265
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
    .turnin 8365 >> Turn in Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >> Turn in Screecher Spirits
    .accept 3527 >> Accept The Prophecy of Mosh'aru
    .target Yeh'kinya
step
    .goto Tanaris,51.808,28.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2605 >> Turn in The Thirsty Goblin
    .accept 2606 >> Accept In Good Taste
    .target Marin Noggenfogger
step
    .goto Tanaris,52.819,27.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
    .turnin 5863 >> Turn in The Dunemaul Compound
    .target Andi Lynn
step
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 3362 >> Turn in Thistleshrub Valley
    .target Tran'rek
step
    .goto Tanaris,51.059,26.873
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2606 >> Turn in In Good Taste
    .accept 2641 >> Accept Sprinkle's Secret Ingredient
    .target Sprinkle
step
    .goto Tanaris,50.210,27.483
    .target Senior Surveyor Fizzledowser
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 162 >> Accept Rise of the Silithid
step
    .goto Tanaris,52.462,28.514
    .target Chief Engineer Bilgewhizzle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 1691 >> Turn in More Wastewander Justice
    .turnin 2781 >> Turn in WANTED: Caliph Scorpidsting
step
    .goto Tanaris,50.21,27.48
    .target Senior Surveyor Fizzledowser
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .turnin 10 >> Turn in The Scrimshank Redemption
step
    .goto Tanaris,51.01,29.35
    >>Talk to |cRXP_FRIENDLY_Bera|r
    .fly Thalanaar >> Fly to Feralas
    .target Bera Stonehammer
step
    +Do feralas quests
    .accept 3445 >> Pick up The Sunken Temple
    .complete 3520,1
    .complete 1452,2
    .complete 1452,3
    .xp 47
step
    +Do tanaris quests
    .accept 3446 >> ST prequests
    .complete 3527,1 >> Do the ZF tablet quest, ideally with a little deathrun
    .complete 1452,1
    .xp 48
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 47-48 Hinterlands
#next 48-49 Krol'Dok Stronghold
#defaultfor Dwarf/Gnome


step
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2988 >> Accept Witherbark Cages
    .target Gryphon Master Talonaxe
-- step << skip 
--     .goto The Hinterlands,14.83,44.56
--     .target Fraggar Thundermantle
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
--     .accept 2880 >> Accept Troll Necklace Bounty
step
    #sticky
    #label FinishFeathers
    >>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
    .complete 3661,1 
step
    .goto The Hinterlands,26.943,48.588
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .turnin 1452 >> Turn in Rhapsody's Kalimdor Kocktail
    .timer 35,Rhapsody's Kalimdor Kocktail RP
    .accept 1469 >> Accept Rhapsody's Tale
    .target Rhapsody Shindigger
step
    #completewith FinalCages
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
    .collect 9259,5,2880,1 
    .mob Witherbark Venomblood
    .mob Witherbark Hideskinner
    .mob Witherbark Zealot
    .mob Witherbark Scalper
step
    .goto The Hinterlands,31.98,57.31
    >>Click the |cRXP_PICK_Third Witherbark Cage|r
    .complete 2988,3 
step
    #label FinalCages
    >>Click the |cRXP_PICK_First Witherbark Cage|r and |cRXP_PICK_Second Witherbark Cage|r
    .complete 2988,1 
    .goto The Hinterlands,23.28,58.81
    .complete 2988,2 
    .goto The Hinterlands,23.12,58.82
step
    #label TrollNecklaces
    .goto The Hinterlands,21.92,56.04,70,0
    .goto The Hinterlands,25.09,59.20,70,0
    .goto The Hinterlands,32.23,58.21
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
    .collect 9259,5,2880,1 
    .mob Witherbark Venomblood
    .mob Witherbark Hideskinner
    .mob Witherbark Zealot
    .mob Witherbark Scalper
step
    .goto The Hinterlands,14.17,45.33,25,0
    .goto The Hinterlands,14.834,44.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .accept 2880 >> Accept Troll Necklace Bounty
    .turnin 2880 >> Turn in Troll Necklace Bounty
    .accept 2877 >> Accept Skulk Rock Clean-up
    .target Fraggar Thundermantle
step
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2988 >> Turn in Witherbark Cages
    .accept 2989 >> Accept The Altar of Zul
    .target Gryphon Master Talonaxe
step
    .goto The Hinterlands,48.814,68.387
    >>|cRXP_WARN_Clear your way to the top of The Altar of Zul. Ensure you are on full HP before you reach the top!|r
    >>|cRXP_WARN_Run to the exploration location, then jump off to the side to evade the Elites at the top. Wait on the ledge until you have dropped Combat. Watch the video below for an example|r
    .complete 2989,1 
    .link https://www.youtube.com/watch?v=FtTS3K7T7Tw >> |cRXP_WARN_Click here for video reference|r
step
    #label FinishFeathers
    .goto The Hinterlands,46.56,40.60,60,0
    .goto The Hinterlands,46.24,39.85,60,0
    .goto The Hinterlands,57.65,42.83
    >>Kill |cRXP_ENEMY_Green Sludges|r and |cRXP_ENEMY_Jade Oozes|r
    .complete 2877,1 
    .complete 2877,2 
    .mob Green Sludge
    .mob Jade Ooze
step
    .goto The Hinterlands,42.5,54.5,70,0
    .goto The Hinterlands,33.5,58.1,70,0
    .goto The Hinterlands,29.6,62.0,70,0
    .goto The Hinterlands,27.7,54.5,70,0
    .goto The Hinterlands,21.0,56.1,70,0
    .goto The Hinterlands,20.0,48.2,70,0
    .goto The Hinterlands,15.7,52.5,70,0
    .goto The Hinterlands,28.1,58.1
    >>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
    >>|cRXP_WARN_These are scattered on the ground throughout all of The Hinterlands|r
    .complete 3661,1 
step
    .use 8704 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-09/HL Distress Beacon|r] to start the quest|r
    >>|cRXP_WARN_If you are unlucky and have not found it yet, skip this step|r
    .collect 8704,1,485,1 
    .accept 485 >> Accept Find OOX-09/HL!
    .itemcount 8704,1 
step
    .isOnQuest 485
    .goto The Hinterlands,49.352,37.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .turnin 485 >> Turn in Find OOX-09/HL!
    .target Homing Robot OOX-09/HL
step
    .isQuestTurnedIn 485
    .goto The Hinterlands,49.352,37.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .accept 836,1 >> Accept Rescue OOX-09/HL!
    .target Homing Robot OOX-09/HL
step
    .isOnQuest 836
    .goto The Hinterlands,72.46,66.16,40,0
    .goto The Hinterlands,76.22,61.81,45,0
    .goto The Hinterlands,79.33,61.26
    >>Escort the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r to safety
    >>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
    .complete 836,1 
    .target Homing Robot OOX-22/FE
step
    #completewith GammeritaSnapshot
    +Grind until your Hearthstone cooldown is <6min
    .cooldown item,6948,<360
step
    #completewith next
    >>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
    .complete 580,1 
step
    #label GammeritaSnapshot
    .line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64
    .goto The Hinterlands,81.95,49.41,70,0
    .goto The Hinterlands,81.21,52.91,70,0
    .goto The Hinterlands,81.98,54.30,70,0
    .goto The Hinterlands,81.97,56.42,70,0
    .goto The Hinterlands,80.77,58.37,70,0
    .goto The Hinterlands,80.34,59.40,70,0
    .goto The Hinterlands,79.45,60.76,70,0
    .goto The Hinterlands,78.69,61.39,70,0
    .goto The Hinterlands,76.86,62.73,70,0
    .goto The Hinterlands,75.91,63.81,70,0
    .goto The Hinterlands,75.29,65.60,70,0
    .goto The Hinterlands,76.72,66.85,70,0
    .goto The Hinterlands,78.53,67.51,70,0
    .goto The Hinterlands,78.60,68.97,70,0
    .goto The Hinterlands,77.90,70.97,70,0
    .goto The Hinterlands,76.71,71.26,70,0
    .goto The Hinterlands,76.52,72.95,70,0
    .goto The Hinterlands,77.07,74.64,70,0
    .goto The Hinterlands,81.21,52.91,70,0
    .goto The Hinterlands,75.91,63.81
    .use 9328 >> |cRXP_WARN_Use the|r |T134442:0|t[Super Snapper FX] |cRXP_WARN_on|r |cRXP_ENEMY_Gammerita|r
    >>|cRXP_WARN_This will cause |cRXP_ENEMY_Gammerita|r to agro you. Be ready to run away after using it|r
    .complete 2944,1 
    .unitscan Gammerita
step
    .goto The Hinterlands,81.7,49.3,70,0
    .goto The Hinterlands,79.3,60.5,70,0
    .goto The Hinterlands,77.5,70.3,70,0
    .goto The Hinterlands,75.7,64.5,70,0
    .goto The Hinterlands,81.9,52.9,70,0
    .goto The Hinterlands,77.9,65.5
    >>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
    .complete 580,1 
step
    .goto The Hinterlands,80.78,46.82
    >>Click on |cRXP_PICK_Cortello's Treasure|r underwater
    .turnin 626 >> Turn in Cortello's Riddle
    .isOnQuest 626
step
    .goto The Hinterlands,47.20,65.95
    +Grind until your Hearthstone is off cooldown
    .cooldown item,6948,<0
step
    #label HinterlandsEnd
    .hs >> Hearth to Tanaris
    .cooldown item,6948,>0,1
step
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Hinterlands>> Fly to The Hinterlands
    .zoneskip Ironforge,1
    .target Gryth Thurden
step
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2989 >> Turn in The Altar of Zul
    .target Gryphon Master Talonaxe
step
    .goto The Hinterlands,14.834,44.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .target Fraggar Thundermantle
    .turnin 2877 >> Turn in Skulk Rock Clean-up
step
    #label Tragan
    .goto The Hinterlands,40.63,59.65
    >>Loot the |cRXP_LOOT_Violet Tragan|r underwater
    .complete 2641,1 
step
    .turnin 3661
    .turnin 1469
    .turnin 2641
    .turnin 836
    .turnin 580
    .accept 2944
    .turnin 2944

step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
step << Rogue
    .goto 1455,51.6,14.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 48-49 Krol'dok Stronghold
#next 49-50 STV / ZF
#defaultfor Dwarf/Gnome


step
    #completewith next
    .goto 16591,60,80,200 >> Travel to the Riverglades
step
    +Finish all good quests in the zone as well as completing Krol'dok Stronghold, more xp is good
    .xp 44
step
    #completewith next
    >>Travel to Steamwheedle Port
    .goto Tanaris,66.56,22.27,50
step
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >> Accept Screecher Spirits
    .target Yeh'kinya
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 40-50
--#groupid RXP-SRGCE-A1
#name 49-50 STV / ZF
#next 50-51 Searing Gorge
#defaultfor Dwarf/Gnome


step
    .goto Stranglethorn Vale,26.694,73.613
    .target Captain Hecklebury Smotts
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .accept 8551 >> Accept The Captain's Chest
step
    .goto Stranglethorn Vale,27.618,76.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .accept 348 >> Accept Stranglethorn Fever
    .target Fin Fizracket
step
    .goto Stranglethorn Vale,27.782,77.071
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 2874 >> Turn in Deliver to MacKinley
    .target "Sea Wolf" MacKinley
step
    .goto Stranglethorn Vale,27.135,77.451
    .target Whiskey Slim
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
    .turnin 580 >> Turn in Whiskey Slim's Lost Grog
step
    .goto Stranglethorn Vale,27.120,77.208
    .target Crank Fizzlebub
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 1122 >> Turn in Report Back to Fizzlebub
    .isOnQuest 1122
step
    .goto Stranglethorn Vale,27.173,77.007
    .target Fleet Master Seahorn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .accept 608 >> Accept The Bloodsail Buccaneers
step
    .goto Stranglethorn Vale,28.358,76.357
    .target Oglethorpe Obnoticus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 2767 >> Turn in Rescue OOX-22/FE!
step
    .goto Stranglethorn Vale,28.358,76.357
    .target Oglethorpe Obnoticus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 648 >> Turn in Rescue OOX-17/TN!
step
    .goto Stranglethorn Vale,28.358,76.357
    .target Oglethorpe Obnoticus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 836 >> Turn in Rescue OOX-09/HL!
step
    .goto Stranglethorn Vale,28.358,76.357
    .target Oglethorpe Obnoticus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .accept 3721 >> Accept An OOX of Your Own
    .turnin 3721 >> Turn in An OOX of Your Own
    .isQuestTurnedIn 836
    .isQuestTurnedIn 648
    .isQuestTurnedIn 2767
step
    .goto Stranglethorn Vale,23.24,71.92
    >>Kill |cRXP_ENEMY_Mok'rash|r. Loot him for the |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r]
    >>|cRXP_WARN_Use the |T133694:0|t[|cRXP_LOOT_Monogrammed Sash|r] to start the quest|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Mok'rash|r around the giant Goblin Statue if needed|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly|r << Warlock/Priest
    >>|cRXP_WARN_Once he is 60% kite him back to Booty Bay with|r |T135928:0|t[Levitate] << Priest
    >>|cRXP_WARN_Cast|r 136100[Entangling Roots] |cRXP_WARN_then|r |T136096:0|t[Moonfire] |cRXP_WARN_and|r |T135753:0|t[Starfire] |cRXP_WARN_to bring him down|r << Druid
    .collect 3985,1,8552,1 
    .use 3985
    .accept 8552 >> Accept The Monogrammed Sash
    .link https://www.twitch.tv/videos/850022146?t=04h16m26s >> |cRXP_WARN_Click here for video reference|r
    .mob Mok'rash
step
    #completewith next
    .goto Stranglethorn Vale,34.22,73.25,60,0
    .goto Stranglethorn Vale,34.01,77.21,60,0
    .goto Stranglethorn Vale,32.34,79.44,60,0
    .goto Stranglethorn Vale,32.38,82.23,60,0
    >>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
    >>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
    .use 4098
    .collect 4098,1,594,1 
    .accept 594 >> Accept Message in a Bottle
step
    >>Kill |cRXP_ENEMY_Captain Keelhaul|r, |cRXP_ENEMY_Fleet Master Firallon|r and |cRXP_ENEMY_Captain Stillwater|r
    >>|cRXP_WARN_They are each found on a Bloodsail Ship, on the second floor|r
    .complete 608,2 
    .goto Stranglethorn Vale,29.27,88.32
    .complete 608,3 
    .goto Stranglethorn Vale,30.58,90.63
    .complete 608,1 
    .goto Stranglethorn Vale,32.89,88.23
    .mob Captain Keelhaul
    .mob Fleet Master Firallon
    .mob Captain Stillwater
step
    .goto Stranglethorn Vale,36.29,83.22,60,0
    .goto Stranglethorn Vale,36.69,77.51,60,0
    .goto Stranglethorn Vale,41.59,76.88,60,0
    .goto Stranglethorn Vale,35.28,72.67,60,0
    .goto Stranglethorn Vale,37.08,68.55,60,0
    .goto Stranglethorn Vale,37.23,65.05,60,0
    .goto Stranglethorn Vale,38.66,61.78,60,0
    >>Open the |cRXP_PICK_Half-Buried Bottles|r on Jaguero Isle. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
    >>|cRXP_WARN_If you can't find any, go back to the mainland and check there|r
    >>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
    .use 4098
    .collect 4098,1,594,1 
    .accept 594 >> Accept Message in a Bottle
step
    .goto Stranglethorn Vale,38.532,80.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    >>|cRXP_WARN_Beware of |cRXP_ENEMY_Jaguero Stalkers|r in|r |T132320:0|t[Stealth] |cRXP_WARN_throughout the Island|r
    .turnin 594 >> Turn in Message in a Bottle
    .target Princess Poobah
step
    .goto Stranglethorn Vale,38.532,80.580
    .target Princess Poobah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .accept 630 >> Accept Message in a Bottle
step
    .goto Stranglethorn Vale,40.94,83.89
    >>Kill |cRXP_ENEMY_King Mukla|r. Loot him for the |cRXP_LOOT_Shackle Key|r
    >>|cRXP_WARN_You can kite |cRXP_ENEMY_King Mukla|r around the large tree|r
    .complete 630,1 
    .mob King Mukla
step
    .goto Stranglethorn Vale,38.532,80.580
    .target Princess Poobah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 630 >> Turn in Message in a Bottle
step
    .goto Stranglethorn Vale,36.95,69.73
    >>Kill |cRXP_ENEMY_Gorlash|r. Loot him for |cRXP_LOOT_Smotts' Chest|r
    >>|cRXP_WARN_Don't try to solo him unless you're in a group or have cooldowns/potion CDs ready|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Try to kite him if required to the Booty Bay enterance so guards assist you|r
    .complete 8551,1 
    .mob Gorlash
step
    #completewith ReturnBB
    .goto Stranglethorn Vale,28.97,73.05,100 >> Travel to Booty Bay
step
    .goto Stranglethorn Vale,26.694,73.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8551 >> Turn in The Captain's Chest
    .turnin 8552 >> Turn in The Monogrammed Sash
    .accept 8553 >> Accept The Captain's Cutlass
    .target Captain Hecklebury Smotts
step
    .goto Stranglethorn Vale,26.694,73.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8551 >> Turn in The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto Stranglethorn Vale,26.694,73.613
    .target Captain Hecklebury Smotts
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8552 >> Turn in The Monogrammed Sash
    .accept 8553 >> Accept The Captain's Cutlass
step
    .isQuestTurnedIn 8552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r and |cRXP_FRIENDLY_Sprogger|r
    .accept 8553 >> Accept The Captain's Cutlass
    .goto Stranglethorn Vale,26.694,73.613
    .turnin 8553 >> Turn in The Captain's Cutlass
    .goto Stranglethorn Vale,26.655,73.642
    .target Captain Hecklebury Smotts
    .target Sprogger
step
    .goto Stranglethorn Vale,27.618,76.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .turnin 348 >> Turn in Stranglethorn Fever
    .target Fin Fizracket
step
    #label ReturnBB
    .goto Stranglethorn Vale,27.173,77.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 608 >> Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .requires quest,2994
    .goto Stormwind City,66.2,62.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Nethergarde Keep >> Fly to Nethergarde Keep in Blasted Lands
    .target Dungar Longdrink
step
    .requires quest,2994
    .goto Blasted Lands,66.898,19.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
    .turnin 2990 >> Turn in Thadius Grimshade
    .target Thadius Grimshade
step
    .requires quest,2994
    .isQuestTurnedIn 2990
    .goto Blasted Lands,66.898,19.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
    .accept 2991 >> Accept Nekrum's Medallion
    .target Thadius Grimshade
step
    #completewith next
    .goto Tanaris,50,31,100 >> Return to Gadgetzan
step
    .accept 3042 >> Accept Troll Temper, should likely roll for completion in the dungeon
    .accept 2865 >> Accept Scarab Shells
    .accept 2768 >> Accept Divino-matic Rod
    .accept 2770 >> Accept Gahz'rilla
    .accept 2846 >> Accept Tiara of the Deep
step
    +Do ZF get big xp and loot
step
    .turnin -3042 >> Turn in Troll Temper
    .turnin 2865 >> Turn in Scarab Shells
    .turnin 2768 >> Turn in Divino-matic Rod
    .turnin 2770 >> Turn in Gahz'rilla
    .turnin 2846 >> Turn in Tiara of the Deep
    .turnin 3527 >> Turn in The Prophecy of Mosh'aru
step
    .goto Un'Goro Crater,63.02,68.60
    >>Click on the |cRXP_PICK_Wrecked Raft|r
    .accept 3844 >> Accept It's a Secret to Everybody
step
    .goto Un'Goro Crater,63.107,69.057
    >>Click the |cRXP_PICK_Small Pack|r underwater
    .turnin 3844 >> Turn in It's a Secret to Everybody
    .accept 3845 >> Accept It's a Secret to Everybody
step
    .goto Un'Goro Crater,68.73,56.70
    >>Loot the |cRXP_LOOT_Piece of Threshadon Carcass|r
    .complete 4290,1 
step
    #completewith ungoroFP
    .subzone 541 >> Travel to Marshal's Refuge
step
    .goto Un'Goro Crater,44.658,8.098
    .use 11107 >> |cRXP_WARN_Open the|r |T133653:0|t[Small Pack]
    .complete 3845,1 
    .complete 3845,2 
    .complete 3845,3 
    .isOnQuest 3845
step
    #label ungoroFP
    .goto Un'Goro Crater,44.658,8.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
    .turnin 3845 >> Turn in It's a Secret to Everybody
    .accept 3908 >> Accept It's a Secret to Everybody
    .target Linken
step
    .goto Un'Goro Crater,45.234,5.831
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
    .fp Un'Goro >> Get the Un'Goro Crater Flight Path
    .target Gryfe
]])