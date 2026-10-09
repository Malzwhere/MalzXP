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
#name 40-41 Scarlet Monastery
#next 41-42 Riverglades
#defaultfor Dwarf/Gnome


step
    #sticky
    +Consider doing Arathi Highlands elite quests at this point for some extra EXP
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
    .accept 1053 >> Accept In the Name of the Light
step
    +Complete Scarlet Monastery
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
    .target Briarthorn
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
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
    .target Briarthorn
    .xp <44,1
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
    .xp <44,1
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
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
    .xp <46,1
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
    .xp <46,1
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