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
    #sticky
    #label stormpike
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to Ironforge and talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    +Pick up all Badlands related quests from him and anyone nearby
step
    +If the dalaran port is available, take it to turn in southshore SM quest, otherwise tram -> flight
step
    #requires stormpike
    .zone Badlands >> Travel to the Badlands through Loch Modan
step
    +Complete quests in the Badlands, this is your chance to do the outer Uldaman quests and all prequests
    >> Get as much XP here as feels good, Feralas will be a little tight
    .xp 42
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
    +Do the Drowned City
step
    +Turnin Drowned City Quests
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
    +Complete Uldaman with all quests and turnins
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