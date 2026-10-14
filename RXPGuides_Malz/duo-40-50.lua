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
step
    +Travel to the hinterlands to quest up to Rhapsody's Kalimdor Kocktail
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
#next 43-44 Drowned City
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
    #season 2
    #sticky
    #completewith OgreScrapMetal
    >>|cRXP_WARN_Ogres and Troggs in Badlands can drop a|r |T237388:0|t[|cRXP_LOOT_Primitive Drawing|r] |cRXP_WARN_which starts a quest. Accept it once you find one. Don't go out of your way to farm it|r
    .accept 78823 >> Accept Terror of the Desert Skies
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
#name 43-44 Drowned City
#next 44-45 Uldaman
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
#name 44-45 Uldaman
#next 45-46 Hinterlands
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
#name 45-46 Hinterlands
#next 46-48 Tanaris/Feralas
#defaultfor Dwarf/Gnome


step
    .hs >> Hearth to Ironforge
step
    .accept 1446 >> Accept Jammal'an the Prophet
    +Travel to the hinterlands and do the mallet and egg quests
    .complete 4787,1
    .turnin 1452 >> Turn in Rhapsody's Kalimdor Kocktail
    .accept 1469 >> Accept Rhapsody's Tale
    +Witherbark Cages up to Nekrum's Medallion
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
#name 46-48 Tanaris/Feralas
#next 48-49 Krol'Dok Stronghold
#defaultfor Dwarf/Gnome


step
    .zone Tanaris >> Return to Tanaris
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
    +Head to STV to do lvl 50 elite quests
    +Nekrum's Medallion in Blasted Lands
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