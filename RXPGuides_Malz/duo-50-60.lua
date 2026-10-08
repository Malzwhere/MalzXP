local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 50-51 Searing Gorge
#next 51-52 Maraudon
#defaultfor Dwarf/Gnome


step
    .goto Searing Gorge,37.934,30.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
    .fp Thorium Point >> Get the Thorium Point flight path
step
    +do all the good quests here
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 51-52 Maraudon
#next 52-52 Alcaz Island
#defaultfor Dwarf/Gnome


step
    #completewith next
    .goto Desolace,64.66,10.53
step
    .goto Desolace,64.64,9.25,15,0
    .goto Desolace,63.827,10.669
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
    .accept 7065 >> Accept Corruption of Earth and Seed
    .target Keeper Marandis
step
    .goto Desolace,66.275,6.554
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
    .home >> Set your Hearthstone to Desolace
    .target Innkeeper Lyshaerya
step
    .goto Desolace,68.501,8.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
    .accept 7041 >> Accept Vyletongue Corruption
    .target Keeper Marandis
step
    .goto Desolace,62.194,39.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
    .accept 7028 >> Accept Twisted Evils
    .target Willow
step
    .goto Desolace,64.66,10.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
    .fly Feathermoon>> Fly to Feathermoon
    .target Baritanas Skyriver
step
    .line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
    .goto Desolace,43.59,84.93,50,0
    .goto Desolace,47.01,86.96,70,0
    .goto Desolace,50.48,86.66,50,0
    .goto Desolace,47.01,86.96,70,0
    .goto Desolace,43.59,84.93,50,0
    .goto Desolace,50.48,86.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
    >>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
    .accept 7067 >> Accept The Pariah's Instructions
    .target Centaur Pariah
step
    #label StartMara
    .goto Desolace,29.89,62.44,0
    .goto 1414,38.43,57.97
    .zone 1414 >> Travel to Maraudon
step
    #completewith EnterMaraudon
    >>Kill all |cRXP_ENEMY_Monsters|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
    >>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance. Don't attempt to complete this now|r
    .complete 7028,1 
    .isOnQuest 7028
step
    >>Kill |cRXP_ENEMY_The Nameless Prophet|r. Loot it for the |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r]
    >>|cRXP_WARN_This is completed OUTSIDE of the Instance. |cRXP_ENEMY_The Nameless Prophets|r may be patrolling|r
    .collect 17757,1,7067,1 
    .mob The Nameless Prophet
    .isOnQuest 7067
step
    .goto 1414,38.469,57.287,20,0
    .goto 1414,38.380,57.376,30,0
    .goto 1414,38.469,57.287
    >>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Gelk|r
    >>Kill |cRXP_ENEMY_Gelk|r. Loot him for the |T134104:0|t[|cRXP_LOOT_Gem of the Second Khan|r]
    >>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
    .collect 17762,1,7067,1 
    .use 17757 
    .mob Spirit of Gelk
    .mob Gelk
    .isOnQuest 7067
step
    .goto 1414,38.497,57.721
    >>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Kolk|r
    >>Kill |cRXP_ENEMY_Kolk|r. Loot him for the |T134129:0|t[|cRXP_LOOT_Gem of the First Khan|r]
    >>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
    .collect 17761,1,7067,1 
    .use 17757 
    .mob Spirit of Kolk
    .mob Kolk
    .isOnQuest 7067
step
    .goto 1414,38.77,58.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
    .accept 7044 >> Accept Legends of Maraudon
    .target Cavindra
step
    .goto 1414,38.928,58.354
    >>|cRXP_WARN_Use the|r |T134865:0|t[Coated Cerulean Vial] |cRXP_WARN_in the Orange pool|r
    .complete 7041,2 
    .use 17693 
    .isOnQuest 7041
step
    .goto 1414,39.00,58.32,70,0
    .goto 1414,39.13,57.68,60,0
    .goto 1414,39.25,57.71,20,0
    .goto 1414,39.13,57.68
    >>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Magra|r
    >>Kill |cRXP_ENEMY_Magra|r. Loot him for the |T134135:0|t[|cRXP_LOOT_Gem of the Third Khan|r]
    >>|cRXP_WARN_This is completed OUTSIDE of the Instance|r
    .collect 17763,1,7067,1 
    .use 17757 
    .mob Spirit of Magra
    .mob Magra
    .isOnQuest 7067
step
    #label EnterMaraudon
    .goto 1414,39.266,58.205
    .subzone 2100,2 >> Enter the Maraudon Instance through the Orange side
step
    #completewith CrystalCarving
    >>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
    .complete 7028,1 
    .isOnQuest 7028
step
    #completewith next
    >>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
    >>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
    .complete 7041,1 
    .use 17696 
    .isOnQuest 7041
step
    >>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Veng|r
    >>Kill |cRXP_ENEMY_Veng|r. Loot him for the |T134116:0|t[|cRXP_LOOT_Gem of the Fifth Khan|r]
    >>|cRXP_ENEMY_Veng|r |cRXP_WARN_patrols around INSIDE the Maraudon Orange Instance|r
    .collect 17765,1,7067,1 
    .use 17757 
    .mob Spirit of Veng
    .mob Veng
    .isOnQuest 7067
step
    >>|cRXP_WARN_Use the|r |T134804:0|t[Filled Cerulean Vial] |cRXP_WARN_on small flowers/plants inside Orange|r
    >>Kill the |cRXP_ENEMY_Noxxious Scions|r that are summoned
    .complete 7041,1 
    .use 17696 
    .isOnQuest 7041
step
    >>Kill |cRXP_ENEMY_Noxxion|r. Loot him for the |cRXP_LOOT_Celebrian Rod|r
    >>Kill |cRXP_ENEMY_Lord Vyletongue|r. Loot him for the |cRXP_LOOT_Celebrian Diamond|r
    >>|cRXP_ENEMY_Noxxion|r |cRXP_WARN_is in the Orange section and |cRXP_ENEMY_Lord Vyletongue|r in the Purple|r
    .complete 7044,2 
    .complete 7044,1 
    .isOnQuest 7044
step
    >>|cRXP_WARN_Use the|r |T133277:0|t[|cRXP_LOOT_Amulet of Spirits|r] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Spirit of Maraudos|r
    >>Kill |cRXP_ENEMY_Maraudos|r. Loot him for the |T134132:0|t[|cRXP_LOOT_Gem of the Fourth Khan|r]
    >>|cRXP_ENEMY_Maraudos|r |cRXP_WARN_patrols around INSIDE the Maraudon Purple Instance|r
    .collect 17764,1,7067,1 
    .use 17757 
    .mob Spirit of Maraudos
    .mob Maraudos
    .isOnQuest 7067
step
    >>|cRXP_WARN_Channel any of the|r |T134129:0|t|T134104:0|t|T134135:0|t|T134132:0|t|T134116:0|t[|cRXP_LOOT_Gems of the Khans|r] |cRXP_WARN_to create the|r |T133277:0|t[|cRXP_LOOT_Amulet of Union|r]
    .complete 7067,1 
    .use 17761,1
    .use 17762,1
    .use 17763,1
    .use 17764,1
    .use 17765,1
    .itemcount 17761,1
    .itemcount 17762,1
    .itemcount 17763,1
    .itemcount 17764,1
    .itemcount 17765,1
    .isOnQuest 7067
step
    >>Kill |cRXP_ENEMY_Celebras the Cursed|r then talk to |cRXP_FRIENDLY_Celebras the Redeemed|r
    .turnin 7044 >> Turn in Legends of Maraudon
    .isQuestComplete 7044
    .mob Celebras the Cursed
    .target Celebras the Redeemed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
    .accept 7046 >> Accept The Scepter of Celebras
    .timer 14,Incantation of Celebras Spawning RP
    .isQuestTurnedIn 7044
    .target Celebras the Redeemed
step
    .cast 6477 >> Click the |cRXP_PICK_Incantation of Celebras|r on the ground
    .timer 34,The Scepter of Celebras RP
    .isQuestTurnedIn 7044
step
    >>|cRXP_WARN_Wait out the RP|r
    .complete 7046,1 
    .isQuestTurnedIn 7044
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celebras the Redeemed|r
    .turnin 7046 >> Turn in The Scepter of Celebras
    .isQuestTurnedIn 7044
    .target Celebras the Redeemed
step
    >>Kill |cRXP_ENEMY_Princess Theradras|r
    .complete 7065,1 
    .mob Princess Theradras
    .isOnQuest 7065
step
    #label CrystalCarving
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaetar's Spirit|r
    .accept 7066 >> Accept Seed of Life
    .target Zaetar's Spirit
step
    >>Kill any |cRXP_ENEMY_Monster|r in Maraudon. Loot them for their |cRXP_LOOT_Theradric Crystal Carvings|r
    >>|cRXP_WARN_This can be completed OUTSIDE and INSIDE of the Instance|r
    .complete 7028,1 
    .isOnQuest 7028
step
    #softcore
    .deathskip >> Die inside Maraudon and respawn in Desolace
step
    #softcore
    .goto Desolace,62.194,39.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
    .turnin 7028 >> Turn in Twisted Evils
    .target Willow
    .isQuestComplete 7028
step
    #softcore
    .line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
    .goto Desolace,43.59,84.93,50,0
    .goto Desolace,47.01,86.96,70,0
    .goto Desolace,50.48,86.66,50,0
    .goto Desolace,47.01,86.96,70,0
    .goto Desolace,43.59,84.93,50,0
    .goto Desolace,50.48,86.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
    >>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
    .turnin 7067 >> Turn in The Pariah's Instructions
    .target Centaur Pariah
    .isQuestComplete 7067
step
    .hs >> Hearth to Nijel's Point
step
    .goto Desolace,64.64,9.15,0
    .goto Desolace,63.827,10.669
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
    .turnin 7065 >> Turn in Corruption of Earth and Seed
    .target Keeper Marandis
    .isQuestComplete 7065
step
    .goto Desolace,68.501,8.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
    .turnin 7041 >> Turn in Vyletongue Corruption
    .target Talendria
    .isQuestComplete 7041
step
    #softcore
    .goto Desolace,64.66,10.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
    .fly Feathermoon>> Fly to Feathermoon
    .target Baritanas Skyriver
step
    #hardcore
    .goto Desolace,62.194,39.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willow|r
    .turnin 7028 >> Turn in Twisted Evils
    .target Willow
    .isQuestComplete 7028
step
    #hardcore
    .line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
    .goto Desolace,43.59,84.93,50,0
    .goto Desolace,47.01,86.96,70,0
    .goto Desolace,50.48,86.66,50,0
    .goto Desolace,47.01,86.96,70,0
    .goto Desolace,43.59,84.93,50,0
    .goto Desolace,50.48,86.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Centaur Pariah|r
    >>|cRXP_WARN_The |cRXP_FRIENDLY_Centaur Pariah|r patrols slightly around southern Desolace|r
    .turnin 7067 >> Turn in The Pariah's Instructions
    .target Centaur Pariah
    .isQuestComplete 7067
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 52-52 Alcaz Island
#next 52-54 Un'goro Crater
#defaultfor Dwarf/Gnome


step
    #completewith next
    .goto Dustwallow Marsh,67.476,51.300
step
    +Pickup Alcaz Island quests and do the dungy
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 52-54 Un'goro Crater
#next 54-54 Sunken Temple
#defaultfor Dwarf/Gnome


step
    .accept 3914 >> Do Videre Elixir questline up Linken's Sword
step
    +Full Un'goro quest experience, remember to pick up silithid quest in tanaris

    +do all the good quests here and in Azshara
    .turnin 3908 >> Turn in It's a Secret to Everybody
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 54-54 Sunken Temple
#next 54-55 Felwood
#defaultfor Dwarf/Gnome


step
    +Do sunken temple and turn in all the quests
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 54-55 Felwood
#next 55-56 Azshara
#defaultfor Dwarf/Gnome


step
    .goto Felwood,62.488,24.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishellena|r
    .fp Felwood>> Get the Felwood Flight Path
    .target Mishellena
step
    +do all the good quests here
    .turnin 3908 >> Turn in It's a Secret to Everybody
    .accept 4005 >> Linken questline to Aquementas
    +Jaedenar quests
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 55-56 Azshara
#next 56-57 Blackrock Depths
#defaultfor Dwarf/Gnome


step
    +do all the good quests here
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 56-57 Blackrock Depths
#next 57-58 LBRS
#defaultfor Dwarf/Gnome


step
    .goto Burning Steppes,84.334,68.326
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgun Stoutarm|r
    .fp Burning Steppes >> Get the Burning Steppes Flight Path
    .target Borgun Stoutarm
step
    + Complete all the quests here, look for BRD quests, Ony attune starts here
step
    .accept 4126 >> Accept Hurley Blackbreath from Kharanos
    +Do BRD quests, will likely take multiple trips but all going to be good xp
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 57-58 LBRS
#next 58-59 Plaguelands
#defaultfor Dwarf/Gnome


step
    +Complete the LBRS quests, ideally hearth to turn in mother's milk and the followup to bijou's belongings
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 58-59 Plaguelands
#next 59-60 Strat / Scholo
#defaultfor Dwarf/Gnome


step
    .goto Eastern Plaguelands,81.63,59.28
    >>Talk to |cRXP_FRIENDLY_Khaelyn|r
    .fp Light's Hope Chapel >> Get the Light's Hope Chapel flight path
    .target Khaelyn Steelwing
step
    +Do some EPL quests
    .complete 5065,1 -- Troll Tablets
    .complete 5065,2
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 59-60 Strat / Scholo
#defaultfor Dwarf/Gnome


step
    +Do some strat scholo
]])