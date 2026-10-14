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
    .home >> Set your Hearthstone to Nijel's Point
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
    .goto Tanaris,51.059,26.873
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2641 >> Turn in Sprinkle's Secret Ingredient
    .accept 2661 >> Accept Delivery for Marin
    .target Sprinkle
    .isQuestComplete 2641
step
    .goto Tanaris,50.887,26.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 4493 >> Turn in March of the Silithid
    .accept 4496 >> Accept Bungle in the Jungle
    .target Alchemist Pestlezugg
    .isQuestComplete 2641
step
    .goto Tanaris,51.808,28.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2661 >> Turn in Delivery for Marin
    .accept 2662 >> Accept Noggenfogger Elixir
    .turnin 2662 >> Turn in Noggenfogger Elixir
    .target Marin Noggenfogger
    .isOnQuest 2661
step
    .goto Tanaris,52.707,45.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3444 >> Turn in The Stone Circle
    .target Marvon Rivetseeker
    .isQuestComplete 3444
step
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
    .fly Un'Goro>> Fly to Un'Goro
    .target Bera Stonehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r and |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .turnin 3884 >> Turn in Williden's Journal
    .accept 3881 >> Accept Expedition Salvation
    .goto Un'Goro Crater,43.947,7.137
    .accept 3883 >> Accept Alien Ecology
    .goto Un'Goro Crater,43.889,7.240
    .target Williden Marshal
    .target Hol'anyee Marshal
step
    .goto Un'Goro Crater,41.918,2.703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 4284 >> Accept Crystals of Power
    .turnin 4284 >> Turn in Crystals of Power
    .itemcount 11186,7 
    .itemcount 11185,7 
    .itemcount 11184,7 
    .itemcount 11188,7 
    .target J.D. Collie
step
    .isQuestTurnedIn 4284
    .goto Un'Goro Crater,41.918,2.703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 4285 >> Accept The Northern Pylon
    .accept 4287 >> Accept The Eastern Pylon
    .accept 4288 >> Accept The Western Pylon
    .target J.D. Collie
step
    .goto Un'Goro Crater,43.5,7.5
    .target Spark Nilminer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .accept 3882 >> Accept Roll the Bones
step
    .goto Un'Goro Crater,43.533,8.436
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 4501 >> Accept Beware of Pterrordax
step
    .goto Un'Goro Crater,43.615,8.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
    .accept 4492 >> Accept Lost!
    .target Spraggle Frock
step
    #qremove 5159
step
    .goto Un'Goro Crater,44.232,11.583
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
    >>If your quest log is full, abandon Moontouched Wildkin if you have not finished the quest. If you have finished it, abandon Cleansed Water Returns to Felwood and you will pick it up again shortly
    .accept 4503 >> Accept Shizzle's Flyer
    .target Shizzle
step
    .goto Un'Goro Crater,62.5,64.1,90,0
    .goto Un'Goro Crater,38.3,53.6,90,0
    .goto Un'Goro Crater,45.5,24.5
    >>Loot |cRXP_LOOT_Power Crystals|r on the ground
    >>|cRXP_WARN_Complete this now if you havn't done so already. They are scattered on the ground throughout Un'Goro|r
    .collect 11186,7,4284,1 
    .collect 11185,7,4284,1 
    .collect 11184,7,4284,1 
    .collect 11188,7,4284,1 
step
    .goto Un'Goro Crater,41.918,2.703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 4284 >> Accept Crystals of Power
    .turnin 4284 >> Turn in Crystals of Power
    .itemcount 11186,7 
    .itemcount 11185,7 
    .itemcount 11184,7 
    .itemcount 11188,7 
    .target J.D. Collie
step
    .isQuestTurnedIn 4284
    .goto Un'Goro Crater,41.918,2.703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 4285 >> Accept The Northern Pylon
    .accept 4287 >> Accept The Eastern Pylon
    .accept 4288 >> Accept The Western Pylon
    .target J.D. Collie
step
    #completewith NorthPylon
    >>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
    .complete 3882,1 
    .complete 4503,1 
    .mob Young Diemetradon
    .mob Diemetradon
step
    #completewith NorthPylon
    >>Kill |cRXP_ENEMY_Pterrordaxes|r and |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
    .complete 4503,2 
    .mob Fledgling Pterrordax
    .mob Pterrordax
step
    #label NorthPylon
    .goto Un'Goro Crater,56.503,12.492
    >>Click the |cRXP_PICK_Northern Crystal Pylon|r
    .complete 4285,1 
    .skipgossip
step
    .goto Un'Goro Crater,63.66,16.56,70,0
    .goto Un'Goro Crater,65.47,16.48
    >>Kill |cRXP_ENEMY_Un'Goro Gorillas|r, |cRXP_ENEMY_Un'Goro Stompers|r and |cRXP_ENEMY_Un'Goro Thunderer|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 4289,1 
    .complete 4289,2 
    .complete 4289,3 
    .mob Un'Goro Gorilla
    .mob Un'Goro Stomper
    .mob Un'Goro Thunderer
    .isOnQuest 4289
step
    #completewith FinishBait
    >>Kill |cRXP_ENEMY_Pterrordaxes|r and |cRXP_ENEMY_Fledgling Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
    .complete 4503,2 
    .mob Fledgling Pterrordax
    .mob Pterrordax
step
    #completewith FinishBait
    >>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
    .complete 3882,1 
    .complete 4503,1 
    .mob Young Diemetradon
    .mob Diemetradon
step
    #optional
    .isOnQuest 4513
    #completewith FinishBait
    >>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
    .use 11953 
    .use 11955 
    .complete 4513,1 
    .mob Muculent Ooze
    .mob Glutinous Ooze
step
    .goto Un'Goro Crater,68.541,36.539
    >>Loot the |cRXP_LOOT_Crate of Foodstuffs|r on the ground
    .complete 3881,1 
step
    .goto Un'Goro Crater,77.225,49.980
    >>Click the |cRXP_PICK_Eastern Crystal Pylon|r
    .complete 4287,1 
    .skipgossip
step
    .goto Un'Goro Crater,63.02,68.60
    >>Click on the |cRXP_PICK_Wrecked Raft|r
    .accept 3844 >> Accept It's a Secret to Everybody
    .isQuestAvailable 3844
step
    .goto Un'Goro Crater,63.107,69.057
    >>Click the |cRXP_PICK_Small Pack|r underwater
    .turnin 3844 >> Turn in It's a Secret to Everybody
    .accept 3845 >> Accept It's a Secret to Everybody
    .isOnQuest 3844
step
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 4290 >> Accept The Fare of Lar'korwi
    .target Torwa Pathfinder
    .isQuestAvailable 4290
step
    .goto Un'Goro Crater,68.73,56.70
    >>Loot the |cRXP_LOOT_Piece of Threshadon Carcass|r
    .complete 4290,1 
    .isOnQuest 4290
step
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4290 >> Turn in The Fare of Lar'korwi
    .accept 4291 >> Accept The Scent of Lar'korwi
    .target Torwa Pathfinder
    .isQuestComplete 4290
step
    .goto Un'Goro Crater,67.324,73.041,8,0
    .goto Un'Goro Crater,66.601,66.727,8,0
    .goto Un'Goro Crater,60.926,72.234,8,0
    .goto Un'Goro Crater,62.285,65.985,8,0
    .goto Un'Goro Crater,63.240,77.350,8,0
    .goto Un'Goro Crater,67.324,73.041,8,0
    .goto Un'Goro Crater,66.601,66.727
    .goto Un'Goro Crater,67.324,73.041,0
    .goto Un'Goro Crater,60.926,72.234,0
    .goto Un'Goro Crater,62.285,65.985,0
    .goto Un'Goro Crater,63.240,77.350,0
    >>Kill |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for their |cRXP_LOOT_Ravasaur Pheromone Glands|r
    >>|cRXP_WARN_Walking over |cRXP_PICK_Raptor Nests|r on the ground will trigger a |cRXP_ENEMY_Lar'korwi Mate|r to spawn|r
    .complete 4291,1 
    .mob Lar'korwi Mate
    .isOnQuest 4291
step
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4291 >> Turn in The Scent of Lar'korwi
    .accept 4292 >> Accept The Bait for Lar'korwi
    .target Torwa Pathfinder
    .isQuestComplete 4291
step
    .use 11568 >> |cRXP_WARN_Open|r |T133635:0|t[Torwa's Pouch] |cRXP_WARN_for the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_and|r |T134743:0|t[Preserved Pheromone Mixture]
    .collect 11569,1,4292,1 
    .collect 11570,1,4292,1 
    .isOnQuest 4292
step
    .goto Un'Goro Crater,79.929,49.896
    >>|cRXP_WARN_Use the|r |T133970:0|t[Preserved Threshadon Meat] |cRXP_WARN_on the stone-slab, then use the|r |T134743:0|t[Preserved Pheromone Mixture] |cRXP_WARN_on it to summon|r |cRXP_ENEMY_Lar'korwi|r
    >>Kill |cRXP_ENEMY_Lar'korwi|r. Loot him for his |cRXP_LOOT_Head|r
    .use 11568 
    .use 11569 
    .use 11570 
    .complete 4292,1 
    .mob Lar'korwi
    .isOnQuest 4292
step << Druid
    #season 2
    #label HuntressIdol
    .train 439765,1
    >>Kill |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Hunters|r and |cRXP_ENEMY_Venomhide Ravasaurs|r. Loot them for the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
    .collect 227444,1
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step << Druid
    #season 2
    #completewith RaptorEnd
    #requires HuntressIdol
    #label HuntressIdolEquip
    .train 439765,1
    .equip 18,227444 >> Equip the |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r]
    .use 227444
step << Druid
    #sticky
    #season 2
    #completewith RaptorEnd
    #requires HuntressIdolEquip
    #label HuntressIdolStack
    .goto Un'Goro Crater,68.0,51.4
    #title Gain 5x |T237556:0|t[Building Inspiration]
    .itemcount 227444,1
    .train 439765,1
    .aura 408828 >> |cRXP_WARN_Attack a |cRXP_ENEMY_Ravasaurs|r until they are down to roughly 5-10% HP and ensure you have 5 combo points on them|r
    >>|cRXP_WARN_Once they are 5-10% HP, cast|r |T136090:0|t[Hibernate] |cRXP_WARN_then switch into|r |T132115:0|t[Cat Form] |cRXP_WARN_and cast|r |T132127:0|t[Ferocious Bite] |cRXP_WARN_to kill them to gain a stack of|r |T237556:0|t[Building Inspiration]
    >>|cRXP_WARN_Repeat this process 5 times|r
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step << Druid
    #sticky
    #season 2
    #completewith RaptorEnd
    #requires HuntressIdolStack
    .itemcount 227444,1
    .use 227444
    .train 439765 >> |cRXP_WARN_Use the|r |T134912:0|t[|cRXP_FRIENDLY_Idol of the Huntress|r] |cRXP_WARN_to train|r |T134296:0|t[Improved Swipe]
step
    #label FinishBait
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4292 >> Turn in The Bait for Lar'korwi
    .target Torwa Pathfinder
    .isQuestComplete 4289
step
    #label FinishBait
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4289 >> Turn in The Apes of Un'Goro
    .accept 4301 >> Accept The Mighty U'cha
    .isQuestComplete 4289
step
    #completewith GlandWallSample
    >>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Young Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
    .complete 3882,1 
    .complete 4503,1 
    .mob Young Diemetradon
    .mob Diemetradon
step
    .goto Un'Goro Crater,56.3,90.6,40,0
    .goto Un'Goro Crater,44.3,90.4,40,0
    .goto Un'Goro Crater,56.3,90.6,40,0
    .goto Un'Goro Crater,44.1,66.2,70,0
    .goto Un'Goro Crater,53.5,62.9,70,0
    .goto Un'Goro Crater,52.3,69.8,70,0
    .goto Un'Goro Crater,44.3,90.4
    >>Kill |cRXP_ENEMY_Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
    >>|cRXP_WARN_You don't need to collect all |cRXP_LOOT_Webbed Pterrordax Scales|r right now|r
    .complete 4501,1 
    .complete 4503,2 
    .disablecheckbox
    .mob Pterrordax
step
    #label GlandWallSample
    .goto Un'Goro Crater,49.93,81.70,70 >> Enter The Slithering Scar Hive
    .isOnQuest 4496,3883
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Gorishi|r. Loot them for their |cRXP_LOOT_Gorishi Scent Gland|r
    .complete 4496,1 
    .mob Gorishi Worker
    .mob Gorishi Wasp
    .mob Gorishi Reaver
    .mob Gorishi Tunneler
    .mob Gorishi Stinger
    .isOnQuest 4496
step
    .goto Un'Goro Crater,48.671,85.322
    >>|cRXP_WARN_Enter The Slithering Scar Hive|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Unused Scraping Vial] |cRXP_WARN_in the centre of the circular room|r
    .complete 3883,1 
step
    #label ScentGland
    .goto Un'Goro Crater,44.8,75.6,70,0
    .goto Un'Goro Crater,45.0,83.6,70,0
    .goto Un'Goro Crater,55.0,83.6,70,0
    .goto Un'Goro Crater,54.4,76.4,70,0
    .goto Un'Goro Crater,48.8,85.3
    >>Kill the |cRXP_ENEMY_Gorishi|r. Loot them for their |cRXP_LOOT_Gorishi Scent Gland|r
    .complete 4496,1 
    .mob Gorishi Worker
    .mob Gorishi Wasp
    .mob Gorishi Reaver
    .mob Gorishi Tunneler
    .mob Gorishi Stinger
    .isOnQuest 4496
step
    #completewith WesternPylon
    >>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
    .complete 3882,1 
    .complete 4503,1 
    .mob Elder Diemetradon
    .mob Diemetradon
step
    #completewith WesternPylon
    >>Kill |cRXP_ENEMY_Frenzied Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
    .complete 4501,2 
    .complete 4503,2 
    .mob Frenzied Pterrordax
step
    #optional
    .isOnQuest 4513
    #completewith WesternPylon
    >>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
    .use 11953 
    .use 11955 
    .complete 4513,1 
    .mob Muculent Ooze
    .mob Glutinous Ooze
step
    .goto Un'Goro Crater,38.457,66.066
    >>Loot the |cRXP_LOOT_Research Equipment|r on the ground
    .complete 3881,2 
step
    .goto Un'Goro Crater,30.928,50.438
    .target Krakle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
    .accept 974 >> Accept Finding the Source
step
    #label WesternPylon
    .goto Un'Goro Crater,23.827,59.201
    >>Click the |cRXP_PICK_Western Crystal Pylon|r
    .complete 4288,1 
    .skipgossip
step
    #completewith CompletePterro
    >>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
    .complete 3882,1 
    .complete 4503,1 
    .mob Elder Diemetradon
    .mob Diemetradon
step
    #optional
    .isOnQuest 4513
    #completewith CompletePterro
    >>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
    .use 11953 
    .use 11955 
    .complete 4513,1 
    .mob Muculent Ooze
    .mob Glutinous Ooze
step
    #label CompletePterro
    .goto Un'Goro Crater,20.6,60,40,70,0
    .goto Un'Goro Crater,22.4,50.0,70,0
    .goto Un'Goro Crater,22.2,41,0,70,0
    .goto Un'Goro Crater,34.8,29.4,70,0
    .goto Un'Goro Crater,39.6,42.2,70,0
    .goto Un'Goro Crater,36.8,76.6,70,0
    .goto Un'Goro Crater,24.6,61.6
    >>Kill |cRXP_ENEMY_Frenzied Pterrordaxes|r. Loot them for their |cRXP_LOOT_Webbed Pterrordax Scales|r
    .complete 4501,2 
    .complete 4503,2 
    .mob Frenzied Pterrordax
step
    #completewith next
    >>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
    .complete 3882,1 
    .complete 4503,1 
    .mob Elder Diemetradon
    .mob Diemetradon
step
    #optional
    .isOnQuest 4513
    .goto Un'Goro Crater,27.0,44.8,70,0
    .goto Un'Goro Crater,34.6,28.6,70,0
    .goto Un'Goro Crater,42.8,54.6,70,0
    .goto Un'Goro Crater,37.0,73.4,70,0
    .goto Un'Goro Crater,28.4,60.8
    >>Kill |cRXP_ENEMY_Muculent Oozes|r and |cRXP_ENEMY_Glutinous Oozes|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Empty Pure Sample Jars] |cRXP_WARN_on their corpses|r
    .use 11953 
    .use 11955 
    .complete 4513,1 
    .mob Muculent Ooze
    .mob Glutinous Ooze
step
    .goto Un'Goro Crater,27.0,44.8,70,0
    .goto Un'Goro Crater,34.6,28.6,70,0
    .goto Un'Goro Crater,42.8,54.6,70,0
    .goto Un'Goro Crater,37.0,73.4,70,0
    .goto Un'Goro Crater,28.4,60.8
    >>Kill |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Elder Diemetradons|r. Loot them for their |cRXP_LOOT_Dinosaur Bones|r and |cRXP_LOOT_Webbed Diemetradon Scales|r
    >>|cRXP_LOOT_Dinosaur Bones|r |cRXP_WARN_may also be looted from the ground. The location is marked on your map to the southwest|r
    .complete 3882,1 
    .goto Un'Goro Crater,31.04,77.70,0
    .complete 4503,1 
    .mob Elder Diemetradon
    .mob Diemetradon
step
    #completewith next
    .goto Un'Goro Crater,47.1,47.1,10,0
    .goto Un'Goro Crater,47.7,48.3,10,0
    .goto Un'Goro Crater,48.2,50.1,10,0
    .goto Un'Goro Crater,48.67,49.33,15,0
    .goto Un'Goro Crater,48.02,47.05,10,0
    .goto Un'Goro Crater,48.81,45.94,10 >> |cRXP_WARN_Travel up the Lava Path of Fire Plume Ridge for a shortcut to the top. Follow the Arrow precisely|r
step
    .goto Un'Goro Crater,49.631,45.694
    .use 12472 >>|cRXP_WARN_Use|r |T132995:0|t[Krakle's Thermometer] |cRXP_WARN_atop Fire Plume Ridge at the Hot Spot|r
    .complete 974,1 
step
    .goto Un'Goro Crater,30.928,50.438
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
    .turnin 974 >> Turn in Finding the Source
    .accept 980 >> Accept The New Springs
    .target Krakle
step
    .goto Un'Goro Crater,51.909,49.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ringo|r
    .turnin 4492 >> Turn in Lost!
    .accept 4491,1 >> Accept A Little Help From My Friends
    >>|cRXP_WARN_This will start an escort quest|r
    .target Ringo
step
    .goto Un'Goro Crater,43.617,8.497
    >>Escort |cRXP_FRIENDLY_Ringo|r to Marshal's Refuge
    .use 11804 >> |cRXP_WARN_Use|r |T132805:0|t[Spraggle's Canteen] |cRXP_WARN_on him when he faints and stops following you|r
    .complete 4491,1 
    .target Ringo
step
    .goto Un'Goro Crater,43.617,8.497
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 4491 >> Turn in A Little Help From My Friends
    .turnin 4501 >> Turn in Beware of Pterrordax
    .target Spraggle Frock
step
    .goto Un'Goro Crater,43.497,7.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 3882 >> Turn in Roll the Bones
    .target Spark Nilminer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r and |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .turnin 3883 >> Turn in Alien Ecology
    .goto Un'Goro Crater,43.889,7.240
    .turnin 3881 >> Turn in Expedition Salvation
    .goto Un'Goro Crater,43.947,7.137
    .target Hol'anyee Marshal
    .target Williden Marshal
step
    .goto Un'Goro Crater,43.947,7.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    >>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
    .collect 11116,1,3884,1 
    .accept 3884 >> Accept Williden's Journal
    .turnin 3884 >> Turn in Williden's Journal
    .use 11116
    .itemcount 11116,1
    .target Williden Marshal
step
    .goto Un'Goro Crater,41.918,2.703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 4285 >> Turn in The Northern Pylon
    .turnin 4287 >> Turn in The Eastern Pylon
    .turnin 4288 >> Turn in The Western Pylon
    .accept 4321 >> Accept Making Sense of It
    .turnin 4321 >> Turn in Making Sense of It
    .target J.D. Collie
step
    .goto Un'Goro Crater,44.232,11.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
    .turnin 4503 >> Turn in Shizzle's Flyer
    .target Shizzle
step
    #completewith BungleJungle
    .destroy 11482 >> Destroy the |T133740:0|t[Crystal Pylon User's Manual]
step
    .goto Un'Goro Crater,46.378,13.444
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
    .accept 4243 >> Accept Chasing A-Me 01
    .target Karna Remtravel
step
    #completewith AMe
    .goto Un'Goro Crater,63.66,16.56
    .subzone 542 >> Travel to Fungal Rock
step
    .goto Un'Goro Crater,67.657,16.758
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 4243 >> Turn in Chasing A-Me 01
    .itemcount 10561,<1 
    .target A-Me 01
step
    #label AMe
    .goto Un'Goro Crater,67.657,16.758
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    >>|cRXP_WARN_Don't accept the follow up yet|r
    .turnin 4243 >> Turn in Chasing A-Me 01
    .itemcount 10561,1 
    .target A-Me 01
step
    .goto Un'Goro Crater,68.49,12.18
    >>Kill |cRXP_ENEMY_U'cha|r. Loot him for his |cRXP_LOOT_Pelt|r
    .complete 4301,1 
    .mob U'cha
    .isOnQuest 4301
step
    .goto Un'Goro Crater,67.657,16.758
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .accept 4244 >> Accept Chasing A-Me 01
    .turnin 4244 >> Turn in Chasing A-Me 01
    .accept 4245 >> Accept Chasing A-Me 01
    .itemcount 10561,1 
    .target A-Me 01
step
    .isQuestTurnedIn 4244
    .goto Un'Goro Crater,67.657,16.758
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .accept 4245 >> Accept Chasing A-Me 01
    .target A-Me 01
step
    .isOnQuest 4245
    .goto Un'Goro Crater,46.378,13.444
    >>Escort |cRXP_FRIENDLY_A-Me 01|r to |cRXP_FRIENDLY_Karna Remtravel|r at Marshal's Refuge
    .complete 4245,1 
    .target A-Me 01
step
    .isQuestComplete 4245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
    .turnin 4245 >>Turn in Chasing A-Me 01
    .target Karna Remtravel
step
    .isQuestTurnedIn 3764 
    .goto Un'Goro Crater,62.5,64.1,90,0
    .goto Un'Goro Crater,38.3,53.6,90,0
    .goto Un'Goro Crater,45.5,24.5
    >>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
    .collect 11018,5,4496,1 
step
    #label SoilsFinished
    .isQuestAvailable 3764 
    .goto Un'Goro Crater,62.5,64.1,90,0
    .goto Un'Goro Crater,38.3,53.6,90,0
    .goto Un'Goro Crater,45.5,24.5
    >>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground
    .collect 11018,25,4496,1
step
    #label RaptorEnd
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4301 >> Turn in The Mighty U'cha
    .target Torwa Pathfinder
    .isQuestComplete 4301
step
    #completewith BungleJungle
    .subzone 976 >> Run back to Gadgetzan in Tanaris
    .isQuestTurnedIn 4301
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Gadgetzan Spirit Healer once you are in Tanaris
    .target Spirit Healer
    .isQuestTurnedIn 4301
step
    #label BungleJungle
    .goto Tanaris,50.887,26.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 4496 >> Turn in Bungle in the Jungle
    .target Alchemist Pestlezugg
    .isOnQuest 4496
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