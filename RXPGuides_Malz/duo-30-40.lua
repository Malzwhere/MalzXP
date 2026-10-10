local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 30-31 Stockades
#next 31-32 Razorfen Kraul
#defaultfor Dwarf/Gnome


step
    #label DRT
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Enter the Deeprun Tram
step
    #completewith TramEnd
    >> |cRXP_WARN_CRAFT ON TRAM
step
    #label TramEnd
    #optional
    .zone Stormwind City >> Enter Stormwind
step
    #completewith next
    .goto 1453,53,51,20 >> Travel to the Stormwind Cathedral
step
    .goto 1453,50.882,47.148
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
    .accept 1274 >> Accept The Missing Diplomat
    .target Thomas
step
    .goto 1453,71.55,55.93,40,0
    .goto 1453,75.28,57.04,40,0
    .goto 1453,76.32,60.42,40,0
    .goto 1453,73.62,62.69,40,0
    .goto 1453,71.72,60.08,40,0
    .goto 1453,70.58,57.66
    .line 1453,71.55,55.93,75.28,57.04,76.32,60.42,73.62,62.69,71.72,60.08,70.58,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .accept 388 >> Accept The Color of Blood
    .unitscan Nikova Raskol
step
    .goto 1453,51.6,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Accept Quell The Uprising
    .turnin 389 >> Turn in Bazil Thredd
    .accept 391 >> Accept The Stockade Riots
    .target Warden Thelwater
step
    #label stock1
    #sticky
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 387,1 
    .complete 387,2 
    .complete 387,3 
    .complete 388,1 
step
    #label stock2
    #sticky
    >>Kill |cRXP_ENEMY_Targorr the Dread|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r has a random spawn location
    >>Kill |cRXP_ENEMY_Dextren Ward|r on the west prison wing. Loot him for his |cRXP_LOOT_Hand|r
    >>Kill |cRXP_ENEMY_Kam Deepfury|r. Loot him for his |cRXP_LOOT_Head|r
    .complete -386,1 
    .complete -377,1 
    .complete 378,1
    .mob Targorr the Dread
    .mob Dextren Ward
    .mob Kam Deepfury
step
    #label Bazil
    >>Kill |cRXP_ENEMY_Bazil Thredd|r on the east prison wing. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for the follow up of this quest chain|r
    .complete 391,1 
    .collect 4306,3,2746,1 
    .mob Bazil Thredd
step
    #requires stock1
step
    #requires stock2
    .goto 1453,51.6,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .turnin 391 >> Turn in The Stockade Riots
    .accept 392 >> Accept The Curious Visitor
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
    .goto 1453,51.6,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .target Warden Thelwater
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 392 >> Turn in The Curious Visitor
    .accept 393 >> Accept Shadow of the Past
    +test
    .target Baros Alexston
step
    .goto 1453,71.55,55.93,40,0
    .goto 1453,75.28,57.04,40,0
    .goto 1453,76.32,60.42,40,0
    .goto 1453,73.62,62.69,40,0
    .goto 1453,71.72,60.08,40,0
    .goto 1453,70.58,57.66
    .line 1453,71.55,55.93,75.28,57.04,76.32,60.42,73.62,62.69,71.72,60.08,70.58,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .turnin 388 >> Turn in The Color of Blood
    .unitscan Nikova Raskol
step
    #completewith next
    .goto 1453,77.5,65.96,20,0
    .goto 1453,80.47,70.89,20,0
    .goto 1453,80.37,69.39,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step
    .goto 1453,78.36,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 393 >> Turn in Shadow of the Past
    .accept 350 >> Accept Look to an Old Friend
    .target Master Mathias Shaw
step
    .goto 1453,66.01,74.18,10,0
    .goto 1453,66.79,74.18,10,0
    .goto 1453,66.07,74.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 350 >> Turn in Look to an Old Friend
    .accept 2745 >> Accept Infiltrating the Castle
    .target Elling Trias
step
    #completewith next
    .goto 1453,73.03,46.77,20,0
    .goto 1453,79.53,39.06,20 >> Travel to the Stormwind Keep
step
    .goto 1453,80.18,44.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop DeLavey|r
    .turnin 1274 >> Turn in The Missing Diplomat
    .accept 1241 >> Accept The Missing Diplomat
    .target Bishop DeLavey
step
    .goto 1453,76.30,42.81,20,0
    .goto 1453,73.19,35.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >> Turn in Infiltrating the Castle
    .accept 2746 >> Accept Items of Some Consequence
    .target Tyrion
step
    .goto 1453,77.03,30.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .turnin 337 >> Turn in An Old History Book
    .accept 538 >> Accept Southshore
    .use 2794
    .itemcount 2794,1 
    .target Milton Sheaf
step
    .goto Stormwind City,76.24,85.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Turn in The Missing Diplomat
    .accept 1242 >> Accept The Missing Diplomat
    .target Jorgen
step
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >> Exit Stormwind. Travel to Clara's Farm House in Elwynn Forest
step
    >>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
    >>|cRXP_WARN_If you still need|r |T132905:0|t[Silk Cloth] |cRXP_WARN_buy some from the Auction House|r
    .complete 2746,2 
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1
step
    #completewith next
    .subzone 87 >> Travel to Goldshire
    .isOnQuest 69
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 69 >> Turn in The Legend of Stalvan
    .accept 70 >> Accept The Legend of Stalvan
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Go upstairs
step
    .goto Elwynn Forest,44.302,65.823
    >>Open the |cRXP_PICK_Storage Chest|r. Loot it for |cRXP_LOOT_An Undelivered Letter|r
    .complete 70,1
step
    #completewith next
    .zone Stormwind City >> Travel to Stormwind City
step
    .goto 1453,66.01,74.18,10,0
    .goto 1453,66.79,74.18,10,0
    .goto 1453,66.07,74.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Turn in The Missing Diplomat
    .accept 1243 >> Accept The Missing Diplomat
    .target Elling Trias
step
    .goto 1453,42.6,72.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Folsom|r
    .turnin 70 >> Turn in The Legend of Stalvan
    .target Caretaker Folsom
    .accept 72 >> Accept The Legend of Stalvan
step
    .goto 1453,42.6,72.2
    >>Click the |cRXP_PICK_Sealed Crate|r on the ground
    .turnin 72 >> Turn in The Legend of Stalvan
    .accept 74 >> Accept The Legend of Stalvan
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood >> Fly to Duskwood
    .target Dungar Longdrink
step << skip
    .isQuestTurnedIn 1040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .goto Duskwood,72.6,46.8
    .turnin 1041 >> Turn in The Caravan Road
    .accept 1042 >> Accept The Carevin Family
    .target Clerk Daltry
step
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .turnin 377 >> Turn in Crime and Punishment
    .target Councilman Millstipe
step << skip
    .isQuestTurnedIn 1040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .goto Duskwood,75.2,48.8
    .turnin 1042 >> Turn in The Carevin Family
    .accept 1043 >> Accept The Scythe of Elune
    .target Jonathan Carevin
step
    #sticky
    #completewith endDuskwood2
    >> If you see any Lost ghosts kill them and complete their quests
    .accept 96137 >> Accept Ira's Dagger
    .accept 96138 >> Accept Merrick's Bow
    .accept 79363 >> Accept Silvia's Sword
    .accept 79362 >> Accept Grant's Shield
    .mob Lost Stalker
    .mob Lost Watcher
    .mob Lost Defender
    .mob Lost Knight
step
    #completewith next
    .goto Duskwood,72.43,45.87,30,0
    .goto Duskwood,70.68,45.66,20,0
    .goto Duskwood,68.46,44.97,45 >>Run up the ramp toward the |cRXP_ENEMY_Nightbane Shadow Weavers|r
step
    #label Weaver
    .goto Duskwood,63.50,40.71,60,0
    .goto Duskwood,58.93,50.51,60,0
    .goto Duskwood,66.00,46.42,60,0
    .goto Duskwood,63.50,40.71,60,0
    .goto Duskwood,58.93,50.51,60,0
    .goto Duskwood,66.00,46.42
    >>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
    >>|cRXP_WARN_Be careful as they cast|r |T136197:0|t[Shadow Bolt]
    .complete 173,1 
    .mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.75,47.57
    >>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >>Turn in Worgen in the Woods
    .target Calor
    .accept 221 >>Accept Worgen in the Woods
step
    >>Kill Nightbane Dark Runners. Be careful as they run faster than normal mobs (and hit hard)
    .goto Duskwood,63.96,51.35,70,0
    .goto Duskwood,60.83,40.72,70,0
    .complete 221,1 
step
    .goto Duskwood,75.68,47.66
    >>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Turn in Worgen in the Woods
    .target Calor
    .accept 222 >> Accept Worgen in the Woods
step << skip
    #completewith next
    .goto Duskwood,73.20,76.19,30 >> Travel to Roland's Doom
    .isQuestTurnedIn 1040
step << skip
    .isQuestTurnedIn 1040
    >>Click the |cRXP_PICK_Mound of Dirt|r at the back of the Cave
    .goto Duskwood,73.527,79.143
    .complete 1043,1 
step
    #label NightbaneW
    .goto Duskwood,72.74,71.83,120,0
    .goto Duskwood,61.98,81.51,120,0
    .goto Duskwood,61.25,75.17,120,0
    .goto Duskwood,63.63,51.01,120,0
    .goto Duskwood,72.74,71.83,120,0
    .goto Duskwood,61.98,81.51,120,0
    .goto Duskwood,61.25,75.17,120,0
    .goto Duskwood,63.63,51.01,120,0
    .complete 222,1 
    .complete 222,2 
step
    .goto Duskwood,75.30,48.04
    >>Talk to |cRXP_FRIENDLY_Calor|r
    .turnin 222 >>Turn in Worgen in the Woods
    .target Calor
    .accept 223 >>Accept Worgen in the Woods
step << skip
    >>Go inside
    .goto Duskwood,75.32,49.02
    .target Jonathan Carevin
    >>Talk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >>Turn in Worgen in the Woods
    .turnin 1043 >> Turn in The Scythe of Elune
    .accept 1044 >> Accept Answered Questions
step
    #label Haggard
    .goto Elwynn Forest,84.61,69.37
    >>Talk to |cRXP_FRIENDLY_Haggard|r
    .turnin 74 >>Turn in The Legend of Stalvan
    .accept 75 >>Accept The Legend of Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.13,69.69,12,0
    .goto Elwynn Forest,85.20,69.15,8,0
    .goto Elwynn Forest,85.70,69.54
    >>Go inside the house, then upstairs
    >>Open |cRXP_PICK_Marshal Haggard's Chest|r. Loot it for |cRXP_LOOT_A Faded Journal Page|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>|cRXP_WARN_This will spawn a |cRXP_ENEMY_Forlon Spirit|r. Get ready to run back outside|r
    .complete 75,1 
step
    .goto Elwynn Forest,84.61,69.37
    >>Talk to |cRXP_FRIENDLY_Haggard|r
    .turnin 75 >>Turn in The Legend of Stalvan
    .accept 78 >>Accept The Legend of Stalvan
    .target Marshal Haggard
step
    .goto Duskwood,74.09,44.71
    >>Talk to |cRXP_FRIENDLY_Smitts|r inside
    .turnin 78 >>Turn in The Legend of Stalvan
    .accept 79 >>Accept The Legend of Stalvan
    .target Tavernkeep Smitts
step
    >>Talk to |cRXP_FRIENDLY_Althea|r and |cRXP_FRIENDLY_Daltry|r
    .turnin 79 >>Turn in The Legend of Stalvan
    .accept 80 >>Accept The Legend of Stalvan
    .goto Duskwood,73.57,46.85
    .turnin 80 >>Turn in The Legend of Stalvan
    .accept 97 >>Accept The Legend of Stalvan
    .goto Duskwood,72.53,46.85
    .target Commander Althea Ebonlocke
    .target Clerk Daltry
step
    .goto Duskwood,73.57,46.85
    >>Talk to |cRXP_FRIENDLY_Althea|r
    .turnin 97 >>Turn in The Legend of Stalvan
    .accept 98 >> Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke
step
    #label endDuskwood2
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fly to Redridge
    .target Felicia Maline
step
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .turnin 386 >> Turn in What Comes Around...
    .target Guard Berton
step
    .goto Redridge Mountains,25.73,46.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorin Songblade|r
    .accept 95772 >> Accept Songblade Search
    .target Dorin Songblade
step
    .goto 1433,25.597,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step
    #completewith next
    .goto 1453,73.03,46.77,20,0
    .goto 1453,76.30,42.81,20 >> Travel to the Stormwind Keep
step
    .goto 1453,73.19,35.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Ensure your party has all turned in Items of Some Consequence before you accept The Attack!|r
    >>|cRXP_WARN_Automatic quest accept has been turned off for this step. Note you may not be able to accept the quest if someone else is in the process of doing it|r
    .turnin 2746 >> Turn in Items of Some Consequence
    .accept 434,1 >> Accept The Attack!
    .timer 124,The Attack! RP
    .target Tyrion
step 
    .goto 1453,72.32,35.26
    >>|cRXP_WARN_Wait in the center of the courtyard for |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r to arrive. This takes roughly 2 minutes|r
    >>Kill |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r
    .complete 434,1 
    .complete 434,2 
    .complete 434,3 
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
step
    .goto 1453,66.01,74.18,10,0
    .goto 1453,66.79,74.18,10,0
    .goto 1453,66.07,74.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 434 >> Turn in The Attack!
    .accept 394 >> Accept The Head of the Beast
    .target Elling Trias
step
    #completewith next
    .goto 1453,77.5,65.96,20,0
    .goto 1453,80.47,70.89,20,0
    .goto 1453,80.37,69.39,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step
    .goto 1453,78.36,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 394 >> Turn in The Head of the Beast
    .accept 395 >> Accept Brotherhood's End
    .target Master Mathias Shaw
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 395 >> Turn in Brotherhood's End
    .accept 396 >> Accept An Audience with the King
    .target Baros Alexston
step
    #completewith next
    .goto 1453,73.03,46.77,20 >> Travel to the Stormwind Keep
step
    .goto 1453,80.03,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .turnin 396 >> Turn in An Audience with the King
    .target Lady Katrana Prestor
step
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Enter the Deeprun Tram
step
    .zone Ironforge >> Take the Deeprun Tram to Ironforge
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 1179 >>Accept The Brassbolts Brothers
    .target Pilot Longbeard
step
    .goto 1455,18.564,51.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
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
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Wetlands >> Fly to Menethil Harbor
    .target Gryth Thurden
step
    .goto Wetlands,9.9,57.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 474 >> Turn in Defeat Nek'rosh
    .target Captain Stoutfist
step
    >>|cRXP_WARN_This is a 3 stop boat, stay on through the Southshore stop|r
    .goto 1437,4.640,57.122
    .zone 1439 >> Take the boat to Darkshore
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 31-32 Razorfen Kraul
#next 32-33 Excavation Site
#defaultfor Dwarf/Gnome


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
step 
    .goto 1439,32.405,43.800
    .zone 1437 >> Take the boat to Menethil Harbor
step
    .goto Wetlands,10.6,60.5
    >>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >> Turn in The Eye of Paleth
    .target Glorin Steelbrow
    .accept 293 >> Accept Cleansing the Eye
step 
    .goto 1437,9.451,59.642
    .fly Ironforge >> Fly to Ironforge
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 32-33 Excavation Site
#next 33-34 Gnomeregan
#defaultfor Dwarf/Gnome

step
    .goto Wetlands,47.70,56.13,10
    >>Enter the Excavation Site
step
    .turnin 95772 >> Turn in Songblade Search
    .accept 95795 >> Accept Fallen in the Fen
    .turnin 95647 >> Turn in Lost in the Thicket Things
    .accept 95809 >> Accept Heartwoven
    .complete 95646,1 -- Horrors in the Highland
    .accept 95810 >> Accept Lost Relic Carry
step
    +elite quests to the north east
step
	.goto Wetlands,38.81,52.39
    .target Prospector Whelgar
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
	.turnin 95810 >> Turn in Lost Relic Carry
    .accept 98824 >> Accept Prehistoric Prism
step
    .goto Wetlands,11.8,58.6
    .target Caitlin Grassman
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .turnin 95809 >> Turn in Heartwoven
step
    .goto Wetlands,49.7,18.3
    .target Motley Garmason
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 378 >> Turn in The Fury Runs Deep
step
    .goto Wetlands,56.4,40.5
    .target Rethiel the Greenwarden
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 95646 >> Turn in Horrors in the Highland
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 33-34 Gnomeregan
#next 34-35 Duskwood/STV
#defaultfor Dwarf/Gnome

step
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +Start Looking for a Gnomeregan group
    .subzoneskip 133
    .subzoneskip 721,2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 2927 >> Accept The Day After
    .goto Ironforge,69.182,50.556
    .accept 2922 >> Accept Save Techbot's Brain!
    .goto Ironforge,69.540,50.325
    .accept 2929 >> Accept The Grand Betrayal
    .goto Ironforge,68.743,48.969
    .accept 2930 >> Accept Data Rescue
    .goto Ironforge,69.823,48.101
    .accept 2924 >> Accept Essential Artificials
    .goto Ironforge,67.925,46.101
    .target Gnoarn
    .target Tinkmaster Overspark
    .target High Tinker Mekkatorque
    .target Master Mechanic Castpipe
    .target Klockmort Spannerspan
step
    .goto Ironforge,69.930,18.548
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r
    .turnin 98824 >> Turn in Prehistoric Prism
    .target High Explorer Magellas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .goto Ironforge,18.10,51.60
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2927 >> Turn in The Day After
    .accept 2926 >> Accept Gnogaine
    .target Ozzie Togglevolt
step
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
step
    .goto 1415,43.40,53.41,50,0
    .goto 1415,43.13,53.36,50,0
    .goto 1415,43.38,52.94,50,0
    .goto 1415,43.40,53.41
    .use 9283 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Invader|r or|r |cRXP_ENEMY_Irradiated Pillager|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Invader|r or |cRXP_ENEMY_Irradiated Pillager|r must be ALIVE when you use it|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2926,1 
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >> Travel to |cRXP_FRIENDLY_Ozzie Togglevolt|r in Kharanos
    >>|cRXP_WARN_You will get a follow up for when you go inside the dungeon|r
    .isOnQuest 2926
step
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2926 >> Turn in Gnogaine
    .accept 2962 >> Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
    .isOnQuest 2962
step
    .goto 1415,43.37,53.11,70,0
    .goto 1415,43.10,52.81
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1,2930,1,1 
    >>Kill |cRXP_ENEMY_Techbot|r. Loot him for his |cRXP_LOOT_Memory Core|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2922,1 
    .mob Techbot
step
    .goto 1415,43.40,53.41,50,0
    .goto 1415,43.13,53.36,50,0
    .goto 1415,43.38,52.94,50,0
    .goto 1415,43.40,53.41
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1 
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
step
    .goto 1415,43.364,52.892,-1
    .goto 1415,43.411,52.898,-1
    .goto 1415,43.402,52.672,-1
    .goto 1415,43.430,52.675,-1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_White Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-A|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .collect 9280,1,2930,1 
    .itemcount 9279,1 
    .skipgossip
step
    .goto 1415,43.17,53.36,40,0
    .goto 1415,42.78,53.81
    .subzone 721,2 >> Enter the Gnomeregan instance portal
step
    #completewith Thermaplugg
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 
step
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Yellow Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-B|r
    >>The console looking machine is located at the gnomish safe zone at the bottom floor, next to the big circular room where the slimes are located
    .collect 9282,1,2930,1 
    .itemcount 9280,1 
    .skipgossip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernobee|r
    >>|cRXP_WARN_This will start an escort quest. |cRXP_FRIENDLY_Kernobee|r spawns randomly in The Dormitory, right outside of the gnomish safe zone|r
    .accept 2904 >> Accept A Fine Mess
    .unitscan Kernobee
step
    >>Escort |cRXP_FRIENDLY_Kernobee|r back to the start of the dungeon
    .complete 2904,1 
step
    .use 9364 >>|cRXP_WARN_Use the|r |T132788:0|t[Heavy Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or|r |cRXP_ENEMY_Irradiated Horror|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or |cRXP_ENEMY_Irradiated Horror|r must be ALIVE when you use it|r
    >>|cRXP_WARN_Note: You must turn this quest in within 2 hours of acquiring the|r |T136006:0|t[High Potency Radioactive Fallout]
    .complete 2962,1 
    .mob Irradiated Slime
    .mob Irradiated Lurker
    .mob Irradiated Horror
step
    #completewith Thermaplugg
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    .complete 2924,1 
step
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Blue Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-C|r
    >>The Punchograph is located on the suspended platform right next to the |cRXP_ENEMY_Electrocutioner 6000|r
    .collect 9281,1,2930,1 
    .itemcount 9282,1 
    .skipgossip
    .unitscan Electrocutioner 6000
step
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Red Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-D|r
    .complete 2930,1 
    .itemcount 9281,1 
    .skipgossip
step
    #label Thermaplugg
    >>Kill |cRXP_ENEMY_Mekgineer Thermaplugg|r
    .complete 2929,1 
step
    #completewith Finished
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    >>If you still haven't finished this quest, go back to places where you looted them before, since they respawn after a few minutes
    .complete 2924,1 
step
    #completewith Finished
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 
step
    >>|cRXP_WARN_Use the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to start the quest|r
    .accept 2945 >> Accept Grime-Encrusted Ring
    .collect 9326,1,2945 
    .itemcount 9326,1
    .use 9326
step
    >>|cRXP_WARN_Take the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to |cRXP_PICK_The Sparklematic 5200|r in The Clean Zone|r
    *You will have to back track to The Clean Zone near the instance entrance, make sure your teamates are there to help you on your trip back
    .turnin 2945 >> Turn in Grime-Encrusted Ring
    .itemcount 9326,1 
step
    >>Click the |cRXP_PICK_The Sparklematic 5200|r one more time
    .accept 2947 >> Accept Return of the Ring
    .isQuestTurnedIn 2945
step
    #label Finished
    .dungeon Gnomer
    .hs >> Hearth to Ironforge
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 2922,1 >> Turn in Save Techbot's Brain!
    .goto Ironforge,69.540,50.325
    .turnin 2929,1 >> Turn in The Grand Betrayal
    .goto Ironforge,68.743,48.969
    .turnin 2930,1 >> Turn in Data Rescue
    .goto Ironforge,69.823,48.101
    .turnin 2924,1 >> Turn in Essential Artificials
    .goto Ironforge,67.925,46.101
    .target Tinkmaster Overspark
    .target High Tinker Mekkatorque
    .target Master Mechanic Castpipe
    .target Klockmort Spannerspan
step
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step 
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >> Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    #completewith next
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >> Travel to Ironforge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >> Turn in Return of the Ring
    .accept 2948 >> Accept Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2947
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    >>|cRXP_WARN_If you are able to obtain a|r |T133215:0|t[Silver Bar] |cRXP_WARN_and a|r |T134105:0|t[Moss Agate] |cRXP_WARN_finish this quest. If not, abandon it|r
    .collect 2842,1,2948,1 
    .collect 1206,1 
    .turnin 2948,2948,1 >> Turn in Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2948
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
step << Rogue
    .goto 1455,51.6,14.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
step << Shaman
    .goto 1455,47.334,13.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldun Stormbreaker|r
    .trainer >> Train your class spells
    .target Eldun Stormbreaker
step
    .goto 1455/0,-1330.28,-4840.430
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 34-35 Duskwood/STV
#next 35-35 Arathi
#defaultfor Dwarf/Gnome


step
    .goto 1453,62.686,34.196,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step
    #label BlessedArm
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Turn in Blessed Arm
    .accept 325 >> Accept Armed and Ready
    .target Grimand Elmore
step
    #completewith next
    .goto 1453,53,51,20 >> Travel to the Stormwind Cathedral
step
    #label Eye
    .goto 1453,50.35,45.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 293 >> Turn in Cleansing the Eye
    .target Archbishop Benedictus
step
    .goto 1453,37.98,64.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kimberly Grant|r, she patrols around the park
    .turnin 98156 >> Turn in Packaged Pristine Pelts
    .target Kimberly Grant
step
    .goto 1453,50.53,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Accept Malin's Request
    .target Archmage Malin
step
    .goto 1453,51.08,95.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r inside
    .accept 1301 >> Accept James Hyal
    .target Connor Rivers
step
    .goto 1453,53.00,86.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1078 >> Turn in Retrieval for Mauren
    .target Collin Mauren
    .isQuestComplete 1078
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Booty Bay >> Fly to Booty Bay
    .target Dungar Longdrink
step
    .goto Stranglethorn Vale,27.600,77.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scooty|r
    .turnin 2904 >> Turn in A Fine Mess
    .target Scooty
step
    .goto Stranglethorn Vale,27.4,77.8
    .fly Redridge >> Fly to Redridge
step
    .goto Redridge Mountains,25.73,46.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorin Songblade|r
    .turnin 95795 >> Turn in Fallen in the Fen
    .target Dorin Songblade
step
    .goto 1433,25.597,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Duskwood >> Fly to Duskwood
    .target Ariena Stormfeather
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 58 >> Turn in The Night Watch
    .accept 98 >> Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke
step
    >>Talk to Watcher Backus. He patrols along the road north of Darkshire
    .goto Duskwood,74.58,41.38,60,0
    .goto Duskwood,72.18,37.09,60,0
    .goto Duskwood,73.47,31.84,60,0
    .goto Duskwood,74.58,41.38,60,0
    .goto Duskwood,72.18,37.09,60,0
    .goto Duskwood,73.47,31.84,60,0
    >>Talk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1243 >>Turn in The Missing Diplomat
    .target Watcher Backus
    .accept 1244 >>Accept The Missing Diplomat
    .unitscan Watcher Backus
step
    .goto Duskwood,79.80,48.01
    >>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .target Viktori Prism'Antras
    .accept 181 >>Accept Look To The Stars
    .isQuestTurnedIn 177
step
    #sticky
    #completewith endDuskwood2
    >> If you see any Lost ghosts kill them and complete their quests, not on route but good turnins
    .accept 96137 >> Accept Ira's Dagger
    .accept 96138 >> Accept Merrick's Bow
    .accept 79363 >> Accept Silvia's Sword
    .accept 79362 >> Accept Grant's Shield
    .mob Lost Stalker
    .mob Lost Watcher
    .mob Lost Defender
    .mob Lost Knight
step
    >>Loot the strongbox inside of the house
    .goto Duskwood,23.92,72.08
    .complete 1244,1 
step
    >>Loot the wooden box just outside of the cave
    .goto Duskwood,33.42,76.37
    .complete 134,1 
step
    >>Go inside of the Ogre cave. Kill Zzarc'Vul
    .goto Duskwood,36.82,83.78
    .complete 181,1 
    .unitscan Zzarc'Vul
step
    #sticky
    #label Grave
    .goto Duskwood,17.73,29.06
    >>Click |cRXP_PICK_A Weathered Grave|r
    .accept 225 >>Accept The Weathered Grave
step
    .goto Duskwood,28.11,31.47
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >>Turn in Ogre Thieves
    .target Abercrombie
    .accept 160 >>Accept Note to the Mayor
step
    >>Talk to Watcher Backus. He patrols along the road north of Darkshire
    .goto Duskwood,74.58,41.38,60,0
    .goto Duskwood,72.18,37.09,60,0
    .goto Duskwood,73.47,31.84,60,0
    .goto Duskwood,74.58,41.38,60,0
    .goto Duskwood,72.18,37.09,60,0
    .goto Duskwood,73.47,31.84,60,0
    >>Talk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1244 >>Turn in The Missing Diplomat
    .target Watcher Backus
    .accept 1245 >>Accept The Missing Diplomat
step
    >>Kill Stalvan Mistmantle. Loot him for his ring
    >>Be careful as he attacks quickly and deals a LOT of melee damage
    .goto Duskwood,77.35,36.19
    .complete 98,1 
step
    .goto Duskwood,79.81,48.02
    .target Viktori Prism'Antras
    >>Talk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Turn in Look To The Stars
step
    .goto Duskwood,75.78,45.31
    .target Madame Eva
    >>Talk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Turn in The Legend of Stalvan
step
    >>Go inside the Keep
    .goto Duskwood,71.93,46.42
    >>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >>Turn in Note to the Mayor
    .target Lord Ello Ebonlocke
    .accept 251 >>Accept Translate Abercrombie's Note
step
    .goto Duskwood,72.64,47.61
    >>Talk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >>Turn in Translate Abercrombie's Note
    .target Sirra Von'Indi
    .accept 401 >>Accept Wait for Sirra to Finish
    .turnin 401 >>Turn in Wait for Sirra to Finish
    .accept 252 >>Accept Translation to Ello
    .turnin 225 >>Turn in The Weathered Grave
    .accept 227 >>Accept Morgan Ladimore
step
    .goto Duskwood,71.93,46.43
    >>Talk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >>Turn in Translation to Ello
    .target Lord Ello Ebonlocke
    .accept 253 >>Accept Bride of the Embalmer
step
    .goto Duskwood,73.57,46.85
    >>Talk to |cRXP_FRIENDLY_Althea|r
    .turnin 227 >>Turn in Morgan Ladimore
    .accept 228 >>Accept Mor'Ladim
    .target Commander Althea Ebonlocke
    .isOnQuest 227
step
    #sticky
    #label Book
    >>Keep an eye out for the Old History Book. If you don't have it yet, keep grinding for it
    .collect 2794,1,337
    .accept 337 >> Accept An Old History Book
step
    >>Go west to Sven
    .goto Duskwood,7.78,34.06
    >>Talk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >>Turn in Armed and Ready
    .target Sven Yorgen
    .accept 55 >>Accept Morbent Fel
step
    >>Clear the mobs out inside the house. Equip Morbent's Bane in your inventory.
    >>Split pull the pack in Morbent's upstairs room with a blizzard, then kite him out the building. Use Morbent's bane on him
    >>Nuke him with Single Target
    .goto Duskwood,17.60,33.42,20,0
    .goto Duskwood,16.91,33.40
    .complete 55,1 
step
    .goto Duskwood,28.864,30.765
    >>Click |cRXP_PICK_Eliza's Grave Dirt|r to summon |cRXP_ENEMY_Eliza|r
    >>Kill |cRXP_ENEMY_Eliza|r. Loot her for the |cRXP_LOOT_Embalmer's Heart|r
    >>|cRXP_ENEMY_Eliza|r |cRXP_WARN_will cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] |cRXP_WARN_along with summoning multiple|r |cRXP_ENEMY_Guards|r
    >>|cRXP_WARN_You can avoid dealing with |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of |cRXP_FRIENDLY_Abercrombie's|r Hut|r << Hunter/Mage/Warlock/Priest
    >>|cRXP_WARN_You can evade |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of Abercrombie's Hut. |cRXP_ENEMY_Eliza|r will continue to cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_at you if you do this while she's alive|r << Warrior/Rogue/Druid/Paladin
    .complete 253,1 
    .mob Eliza
step
    .goto Duskwood,19.59,37.28
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
    >>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
    .complete 228,1 
    .unitscan Mor'Ladim
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Turn in Morbent Fel
    .target Sven Yorgen
step
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Darkshire >> Fly back to Darkshire
    .target Thor
    .subzoneskip 42 
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,73.59,46.89
    .isQuestTurnedIn 228
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
    .target Watcher Ladimore
step
    #label endDuskwood2
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 253 >> Turn in Bride of the Embalmer
    .target Lord Ello Ebonlocke
step
    #completewith next
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514
    .zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
    >>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
    >>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
    .accept 215 >> Accept Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 583 >> Accept Welcome to the Jungle
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Turn in Welcome to the Jungle
    .turnin 5762 >> Turn in Hemet Nesingwary
    .goto Stranglethorn Vale,35.658,10.808
    .target Barnil Stonepot
    .target Hemet Nesingwary
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #completewith next
    >>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 
    .mob Young Panther
step
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50
    >>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 
    .mob Young Stranglethorn Tiger
step
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00
    >>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    >>|cRXP_WARN_Don't accept the follow ups yet|r
    .turnin 185 >> Turn in Tiger Mastery
    .accept 186 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    >>|cRXP_WARN_Don't accept the follow up yet|r
    .turnin 215 >> Turn in Jungle Secrets
    .isOnQuest 215
    .target Lieutenant Doren
step
    .hs >> Hearth to Ironforge
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 35-35 Arathi
#next 35-36 City of Dalaran
#defaultfor Dwarf/Gnome


step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Southshore >> Fly to Southshore
    .target Gryth Thurden
step
    .goto Hillsbrad Foothills,52.42,55.96
    >>Talk to |cRXP_FRIENDLY_Darren|r outside
    .accept 564 >>Accept Costly Menace
    .target Darren Malvew
step
    #completewith LeaveSS
    >>|cRXP_WARN_The |cRXP_ENEMY_Shadowy Assassin|r attack on Southshore is a random event|r
    >>If you ever see a |cRXP_ENEMY_Shadowy Assassin|r in Southshore, kill them. Loot them for the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Assassin's Contract|r] to start the quest|r
    >>|cRXP_WARN_Skip this step if you don't see the event|r
    .collect 3668,1,522
    .use 3668
    .accept 522 >> Accept Assassin's Contract
    .unitscan Shadowy Assassin
step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >> Turn in Southshore
    .target Loremaster Dibbs
step
    .goto Hillsbrad Foothills,48.14,59.10
    .target Magistrate Henry Maleb
    >>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 522 >> Turn in Assassin's Contract
    .accept 505 >>Accept Syndicate Assassins
step
    .goto Hillsbrad Foothills,50.344,59.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
    .accept 659 >> Accept Hints of a New Plague?
    .target Phin Odelic
step
    #label LeaveSS
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fly Arathi Highlands >> Fly to Arathi Highlands
    .target Darla Harris
step
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 681 >> Accept Northfold Manor
    .target Captain Nials
step
    .goto Arathi Highlands,46.65,47.01
    .target Skuerto
    >>Talk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >>Turn in Malin's Request
step
    .goto Arathi Highlands,46.197,47.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .accept 691 >> Accept Worth Its Weight in Gold
    .target Apprentice Kryten
step
    #label Northfold
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47
    >>Kill |cRXP_ENEMY_Syndicate Mercenaries|r and |cRXP_ENEMY_Syndicate Highwaymen|r
    >>|cRXP_WARN_Be aware |cRXP_ENEMY_Syndicate Highwaymen|r are in|r |T132320:0|t[Stealth] |cRXP_WARN_and can be found around the perimiter of Northfold Manor|r
    .complete 681,1 
    .complete 681,2 
    .mob Syndicate Highwayman
    .mob Syndicate Mercenary
step
    #completewith next
    .goto Arathi Highlands,43.25,55.38,60,0
    .goto Arathi Highlands,45.82,59.22,60,0
    .goto Arathi Highlands,50.58,59.70,60,0
    .goto Arathi Highlands,53.08,61.57,60,0
    .goto Arathi Highlands,59.09,63.04,60,0
    +Kill the |cRXP_ENEMY_Forsaken Courier|r to reset it's spawn to the Go'Shek farm
    .unitscan Forsaken Courier
step
    .goto Arathi Highlands,60.18,53.85
    >>Talk to |cRXP_FRIENDLY_Quae|r
    .turnin 659 >>Turn in Hints of a New Plague?
    .accept 658 >>Accept Hints of a New Plague?
    .target Quae
step
    .goto Arathi Highlands,43.25,55.38,60,0
    .goto Arathi Highlands,45.82,59.22,60,0
    .goto Arathi Highlands,50.58,59.70,60,0
    .goto Arathi Highlands,53.08,61.57,60,0
    .goto Arathi Highlands,59.09,63.04,60,0
    >>AoE the |cRXP_ENEMY_Forsaken Courier|r. Loot it for the |cRXP_LOOT_Sealed Folder|r
    .complete 658,1 
    .unitscan Forsaken Courier
step
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    >>|cRXP_WARN_Don't go out of your way to find the |cRXP_ENEMY_Forsaken Courier|r. You can skip this step and finish it later|r
    .turnin 658 >> Turn in Hints of a New Plague?
    .target Quae
step
    .isQuestTurnedIn 658
    .target Quae
    >>Talk to |cRXP_FRIENDLY_Quae|r
    .accept 657 >>Accept Hints of a New Plague?
    >>Talk to |cRXP_FRIENDLY_Kinelory|r
    .turnin 657 >>Turn in Hints of a New Plague?
    .target Kinelory
    .accept 660 >>Accept Hints of a New Plague?
step
    .isQuestTurnedIn 658
    >>Escort Kinelory
    .complete 660,1 
step
    .isQuestTurnedIn 658
    .goto Arathi Highlands,60.19,53.85
    >>Talk to |cRXP_FRIENDLY_Quae|r
    .turnin 660 >>Turn in Hints of a New Plague?
    .target Quae
    .accept 661 >>Accept Hints of a New Plague?
step
    >>Kill the |cRXP_ENEMY_Witherbarks|r. Loot them for their |cRXP_LOOT_Witherbark Tusks|r
    >>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for their |cRXP_LOOT_Medicine Pouches|r
    >>Kill |cRXP_ENEMY_Witherbark Shadow Hunters|r. Loot them for their |cRXP_LOOT_Shadow Hunter Knife|r
    >>|cRXP_ENEMY_Witherbark Shadow Hunters|r |cRXP_WARN_are only found inside the Cave|r
    .complete 691,1 
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    .complete 691,2 
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    .complete 691,3 
    .goto Arathi Highlands,68.38,75.92,30,0
    .goto Arathi Highlands,68.20,79.47
    .mob Witherbark Shadow Hunter
    .mob Witherbark Witch Doctor
    .mob Witherbark Shadowcaster
    .mob Witherbark Troll
    .isOnQuest 691
step
    .goto Arathi Highlands,46.197,47.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 691 >> Turn in Worth Its Weight in Gold
    .target Apprentice Kryten
step
    .goto Arathi Highlands,45.832,47.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 681 >> Turn in Northfold Manor
    .target Captain Nials
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedrik Prose|r
    .goto Arathi Highlands,45.73,46.09
    .fly Southshore >> Fly to Southshore
    .target Cedrik Prose
step
    .isOnQuest 661
    .goto Hillsbrad Foothills,50.34,59.04
    .target Phin Odelic
    >>Talk to |cRXP_FRIENDLY_Phin Odelic|r
    .turnin 661 >>Turn in Hints of a New Plague?
step
    #completewith next
    .goto Hillsbrad Foothills,46.10,31.84,20 >>Enter the Yeti Cave
step
    #loop
    .line Hillsbrad Foothills,43.84,31.43,43.23,28.53,45.10,28.43,43.11,26.14,45.22,25.20,45.10,28.43,43.49,30.29,43.02,32.93
    .goto Hillsbrad Foothills,43.84,31.43,20,0
    .goto Hillsbrad Foothills,43.23,28.53,20,0
    .goto Hillsbrad Foothills,45.10,28.43,20,0
    .goto Hillsbrad Foothills,43.11,26.14,20,0
    .goto Hillsbrad Foothills,45.22,25.20,20,0
    .goto Hillsbrad Foothills,45.10,28.43,20,0
    .goto Hillsbrad Foothills,43.49,30.29,20,0
    .goto Hillsbrad Foothills,43.02,32.93,20,0
    >>Loot the |cRXP_LOOT_Alterac Granite|r against the walls inside the cave
    >>|cRXP_WARN_There are only 2-3 up at a time. You may have to backtrack for respawns|r
    >>Kill |cRXP_ENEMY_Ferocious Yetis|r and |cRXP_ENEMY_Cave Yetis|r
    .complete 689,1 
    .mob Ferocious Yeti
    .mob Cave Yeti
step
    .goto Alterac Mountains,39.17,80.37,20 >>Exit the Cave
    .isOnQuest 689
step
    .goto Alterac Mountains,31.94,80.17,60,0
    .goto Alterac Mountains,29.63,86.51,60,0
    .goto Alterac Mountains,35.42,83.73,60,0
    .goto Alterac Mountains,39.20,92.75,60,0
    .goto Alterac Mountains,40.04,86.19,60,0
    .goto Alterac Mountains,45.33,76.91,60,0
    >>Kill |cRXP_ENEMY_Hulking Mountain Lions|r and |cRXP_ENEMY_Mountain Lions|r
    .complete 564,1 
    .complete 564,2 
    .mob Hulking Mountain Lion
    .mob Mountain Lion
step
    #completewith next
    .goto Alterac Mountains,47.94,82.55,60,0
    .goto Alterac Mountains,49.06,73.60,60,0
    .goto Alterac Mountains,53.74,65.45,60,0
    >>AoE |cRXP_ENEMY_Syndicate Footpads|r and |cRXP_ENEMY_Syndicate Thieves|r
    >>|cRXP_WARN_Single target kill the |cRXP_ENEMY_Syndicate Wizard|r if it's up to create space|r
    >>|cRXP_WARN_Be careful as they both cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind) and the |cRXP_ENEMY_Syndicate Thieves|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(18 damage every 3 seconds for 30 seconds)|r
    .complete 505,1 
    .complete 505,2 
    .mob Syndicate Footpad
    .mob Syndicate Thief
    .mob Syndicate Wizard
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 35-36 City of Dalaran
#next 36-37 Desolace
#defaultfor Dwarf/Gnome


step -- TODO: dalaran stuff when we can just do it on beta
    >> go to dalaran and do the dungy i guess idk
step
    .fp Dalaran >> get the dalaran flightpath.. (i assume one exists)
    .fly Southshore >> Fly to Southshore for quest turnins
step -- temp turnins to see xp values
    .accept 92458 >> Accept Heart of Disruption
    .accept 92456 >> Accept A Green Sample
    .accept 92489 >> Accept Power Overwhelming
    .accept 92457 >> Accept Starving Arcane
    .turnin 92458 >> Turn in Heart of Disruption
    .turnin 92456 >> Turn in A Green Sample
    .turnin 92489 >> Turn in Power Overwhelming
    .turnin 92457 >> Turn in Starving Arcane
step
    >>Inside the keep
    .goto Hillsbrad Foothills,48.14,59.11
    .target Magistrate Henry Maleb
    >>Talk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 505 >>Turn in Syndicate Assassins
    .turnin 510 >>Turn in Foreboding Plans
step
    .goto Hillsbrad Foothills,50.57,57.10
    >>Talk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >>Turn in Encrypted Letter
    .target Loremaster Dibbs
    .accept 514 >>Accept Letter to Stormpike
step
    .goto Hillsbrad Foothills,52.42,55.97
    .target Darren Malvew
    >>Talk to |cRXP_FRIENDLY_Darren Malvew|r
    .turnin 564 >>Turn in Costly Menace
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
    #label KTributeEnd
    >> HE RP's FOR 57 SECONDS
    .goto Ironforge,38.74,87.01
    >>Talk to |cRXP_FRIENDLY_Marblesten|r
    .turnin 689 >>Turn in A King's Tribute
    .timer 57,A King's Tribute RP
    .accept 700 >>Accept A King's Tribute
    .target Grand Mason Marblesten
step
    #completewith next
    .goto Ironforge,46.74,50.69,20,0
    .goto Ironforge,44.02,50.47,20,0
    .goto Ironforge,39.08,56.23,12 >>Travel toward |cRXP_FRIENDLY_Magni|r
step
    .goto Ironforge,39.08,56.23
    >>Talk to |cRXP_FRIENDLY_Magni|r
    .turnin 700 >>Turn in A King's Tribute
    .target King Magni Bronzebeard
step
    .goto Ironforge,74.64,11.74
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 514 >>Turn in Letter to Stormpike
    .accept 525 >>Accept Further Mysteries
    .accept 707 >>Accept Ironband Wants You!
    .target Prospector Stormpike
step
    .goto 1455/0,-1330.28,-4840.430
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
step
    #completewith next
    .goto Stormwind City,68.97,29.47,15,0
    .goto Stormwind City,72.54,25.97,15,0
    .goto Stormwind City,74.00,30.25,20 >>Travel toward |cRXP_FRIENDLY_Remington|r
step
    .goto Stormwind City,74.18,7.46
    >>Talk to |cRXP_FRIENDLY_Remington|r
    .accept 543 >> Accept The Perenolde Tiara
    .target Court Remington Ridgewell
step
    .goto Stormwind City,59.90,64.18
    >>Talk to |cRXP_FRIENDLY_Elling|r
    >>|cRXP_WARN_Jump up from the doorway whilst spamming your "Interact with Target" keybind|r
    .turnin 1245 >>Turn in The Missing Diplomat
    .accept 1246 >>Accept The Missing Diplomat
    .target Elling Trias
step
    #completewith next
    .goto Stormwind City,57.00,61.64,20,0
    .goto Stormwind City,58.19,57.66,20,0
    .goto Stormwind City,57.81,54.73,20,0
    .goto Stormwind City,59.91,51.65,20,0
    .goto Stormwind City,64.78,48.93,20,0
    .goto Stormwind City,67.52,46.92,20,0
    .goto Stormwind City,70.02,48.13,15,0
    .goto Stormwind City,69.94,45.94,15,0
    .goto Stormwind City,70.54,44.89,15 >>Travel toward |cRXP_FRIENDLY_Dashel|r
step
    .goto Stormwind City,70.54,44.89
    >>Talk to |cRXP_FRIENDLY_Dashel|r
    >>|cRXP_WARN_This will start an event where |cRXP_ENEMY_Dashel|r and his |cRXP_ENEMY_Old Town Thugs|r 3v1 you|r
    >>|cRXP_WARN_Defeat |cRXP_ENEMY_Dashel|r, then AoE the |cRXP_ENEMY_Old Town Thugs|r once they reset the first time|r
    .turnin 1246 >>Turn in The Missing Diplomat
    .accept 1447 >>Accept The Missing Diplomat
    .target Dashel Stonefist
step
    .goto Stormwind City,70.54,44.89
    >>Defeat |cRXP_ENEMY_Dashel|r
    .complete 1447,1 
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.54,44.89
    >>Talk to |cRXP_FRIENDLY_Dashel|r
    .turnin 1447 >>Turn in The Missing Diplomat
    .accept 1247 >>Accept The Missing Diplomat
    .target Dashel Stonefist
    .mob Old Town Thug
step
    .goto Stormwind City,59.90,64.18
    >>Talk to |cRXP_FRIENDLY_Elling|r
    >>|cRXP_WARN_Jump up from the doorway whilst spamming your "Interact with Target" keybind|r
    .turnin 1247 >>Turn in The Missing Diplomat
    .accept 1248 >>Accept The Missing Diplomat
    .target Elling Trias
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 36-37 Desolace
#next 37-38 STV
#defaultfor Dwarf/Gnome


step
    #map Stonetalon Mountains
    #completewith next
    .goto Desolace,53.958,3.436
    .zone Desolace >> Travel to Desolace
step
    .goto Desolace,67.28,15.00,40 >> Travel to the path leading to Nijel's Point in Desolace
step
    .goto Desolace,64.66,10.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
    .fp Desolace >> Get the Desolace Flight Path
    .target Baritanas Skyriver
step
    +Pickup quests in Nijel's Point
    .accept 261 >> Down the Scarlet Path leads to SM quest
step
    +Additional quests on the northern coast
    +Make sure to check Shen'dralas for new quests, particularly in RFD
    +Desolace to lvl 37
    .xp 37
step
    .hs >> Hearth to Ironforge
step
    .goto 1455/0,-1330.28,-4840.430
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Booty Bay >> Fly to Booty Bay
    .target Dungar Longdrink
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 37-38 STV
#next 38-40 Dustwallow
#defaultfor Dwarf/Gnome


step
    +Pickup quests in Booty Bay
step
    .goto Stranglethorn Vale,27.530,77.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .fly Westfall >> Fly to Westfall
    .target Gyll
step
    .isOnQuest 231
    >>Click |cRXP_PICK_A Weathered Grave|r
    .goto Duskwood,17.72,29.07
    .turnin 231 >> Turn in A Daughter's Love
step
    .destroy 2154 >> Delete the |T133741:0|t[The Story of Morgan Ladimore]
step
    .goto Duskwood,44.598,87.565,50 >> Travel to northern Stranglethorn Vale
step
    +Northern STV quests to lvl 38
    .xp 38
step
    +Return to Booty Bay to turnin
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
step << Rogue
    .goto 1455,51.6,14.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Wetlands >> Fly to Menethil Harbor
    .target Gryth Thurden
step 
    >>|cRXP_WARN_This is a 3 stop boat, stay on through the Southshore stop|r
    .goto 1437,4.640,57.122
    .zone 1439 >> Take the boat to Darkshore
step
    >> Speak to the flight master ontop of the platform
	.goto Darkshore,36.3,45.6
    .fly Stonetalon >> Fly to Stonetalon Mountains
    .target Caylais Moonfeather
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 38-40 Dustwallow Marsh
#next 40-40 Razorfen Downs
#defaultfor Dwarf/Gnome


step
    .goto Wetlands,10.828,60.399
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >> Turn in James Hyal
    .accept 1302 >> Accept James Hyal
    .target Vincent Hyal
step
    >>Turning this in will make the NPC behind you start to run out of the Inn. Catch up to him
    .goto Wetlands,10.60,60.77
    >>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1248 >>Turn in The Missing Diplomat
    .target Mikhail
    .accept 1249 >>Accept The Missing Diplomat
step
    >>Quickly run outside the Inn and kill Tapoke
    .goto Wetlands,10.50,59.30
    .complete 1249,1 
step
    >>Mikhail might be stuck in an rp animation, you may have to wait a few seconds
    .goto Wetlands,10.60,60.77
    .target Mikhail
    >>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1249 >>Turn in The Missing Diplomat
step
    >>Talk to Tapoke behind you
    .goto Wetlands,10.55,60.26
    .target Tapoke "Slim" Jahn
    >>Talk to |cRXP_FRIENDLY_Tapoke "Slim" Jahn|r
    .accept 1250 >>Accept The Missing Diplomat
step
    .goto Wetlands,10.60,60.77
    >>Talk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >>Turn in The Missing Diplomat
    .target Mikhail
    .accept 1264 >>Accept The Missing Diplomat
step 
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >> Take the boat to Theramore
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .goto Dustwallow Marsh,67.476,51.300
    .fp Theramore >> Get the Theramore Flight Path
    .target Baldruc
step
    #label JamesHyjal
    .goto Dustwallow Marsh,67.877,48.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Lendry|r upstairs in the Keep
    .turnin 1302 >> Turn in James Hyal
    .target Clerk Lendry
    .isOnQuest 1302
step
    #label MDiplomat
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Samaul|r
    .turnin 1264 >> Turn in The Missing Diplomat
    .accept 1265 >> Accept The Missing Diplomat
    .goto Dustwallow Marsh,67.923,48.540
    .target Commander Samaul
step
    .goto Dustwallow Marsh,46.021,57.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 2846 >> Accept Tiara of the Deep
    .target Tabetha
step
    +Dustwallow quests to lvl 40
    .xp 40
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
step << Dwarf/Gnome !Paladin !Rogue
    >> Trade gold if necessary
    .goto Dun Morogh,63.4,50.6
    +Head to the Amberstill Ranch in Dun Morogh and buy a mount
step
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Enter the Deeprun Tram
step
    #completewith TramEnd
    >> |cRXP_WARN_CRAFT ON TRAM
step
    #label TramEnd
    .zone Stormwind City >> Enter Stormwind
step
    #completewith next
    .goto 1453,53,51,20 >> Travel to the Stormwind Cathedral
step
    .goto 1453,69.43,40.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .accept 1448 >>Accept In Search of The Temple
    .target Brohann Caskbelly
step
    .goto 1453,50.35,45.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .accept 3636 >> Accept Bring the Light
    .target Archbishop Benedictus
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Booty Bay >> Fly to Booty Bay
    .target Dungar Longdrink
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 40-40 Razorfen Downs
#next 40-41 Scarlet Monastery
#defaultfor Dwarf/Gnome


step
    .zone The Barrens >> Take the boat to Ratchet
step << Warlock
    .goto The Barrens,62.627,35.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad Farsan|r
    .turnin 4487 >> Turn in Summon Felsteed
    .accept 4490 >> Accept Summon Felsteed
    .turnin 4490 >> Turn in Summon Felsteed
    .target Strahad Farsan
step
    .dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Thalanaar >> Fly to Thousand Needles
    .target Bragok
step
    +Complete Razorfen Downs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
    .goto Feralas,89.497,45.853
    .fly Ratchet >> Fly to Ratchet
    .target Thyssiana
step
    .zone Stranglethorn Vale >> Take the boat to Booty Bay
step
    +Check for good, doable quests to do while here in STV, maybe pirates + riddle?
step
    >>Travel to swamp of sorrows for sunken temple prequest, can do quests while here
    .goto Swamp of Sorrows,67.00,47.00
    >>Swim to the middle of the Pool of Tears
    >>Be careful not to run too close to Stonard on your way there. Avoid fighting any of the higher level dragonkin on the way as well
    .complete 1448,1
step
    .fp Blasted Lands >> Grab the blasted lands flight path
    .fly Stormwind >> Fly to Stormwind
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