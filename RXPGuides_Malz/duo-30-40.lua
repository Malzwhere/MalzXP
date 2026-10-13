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
#name 30-32 Stockades
#next 32-33 Excavation Site
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
step
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
step
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
step
    #completewith next
    .goto Duskwood,73.20,76.19,30 >> Travel to Roland's Doom
    .isQuestTurnedIn 1040
step
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
step
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
    .goto Redridge Mountains,25.73,46.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorin Songblade|r
    .accept 95772 >> Accept Songblade Search
    .target Dorin Songblade
step
    .goto Redridge Mountains,31.27,46.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .turnin 386 >> Turn in What Comes Around...
    .target Guard Berton
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
    .goto Wetlands,10.6,60.5
    >>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >> Turn in The Eye of Paleth
    .target Glorin Steelbrow
    .accept 293 >> Accept Cleansing the Eye
step
    .goto Wetlands,54.25,47.99,50,0
    .goto Wetlands,52.82,66.10,25,0
    .goto Wetlands,48.02,56.52,10
    >>Enter the Excavation Site
step
    .complete 95646,1 -- Horrors in the Highland
    .turnin 95772 >> Turn in Songblade Search
    .accept 95795 >> Accept Fallen in the Fen
    .turnin 95647 >> Turn in Lost in the Thicket Things
    .accept 95809 >> Accept Heartwoven
    .accept 95810 >> Accept Lost Relic Carry
    .use 270865
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
    .goto Ironforge,67.91,17.50,25,0
    .goto Ironforge,69.93,21.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
    >>|cRXP_FRIENDLY_Roetten Stonehammer|r |cRXP_WARN_patrols the Hall of Explorers|r
    .accept 1453 >> Accept Reclaimers' Business in Desolace
    .target Roetten Stonehammer
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
#name 34-35 Duskwood
#next 35-36 Stranglethorn Vale
#defaultfor Dwarf/Gnome


step
    .goto 1453,62.686,34.196,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2928 >> Turn in Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step
    .goto Stormwind City,31.35,62.90
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r
    .accept 92456 >> Accept A Green Sample
    .target Shylamiir
step
    .goto Stormwind City,48.14,87.42,25,0
    .goto Stormwind City,48.80,87.61
    >>Climb the tower and talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .accept 92489 >> Accept Power Overwhelming
    .target High Sorcerer Andromath
-- step -- hinges on doing RFK/shimmering flats
--     .goto 1453,37.98,64.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kimberly Grant|r, she patrols around the park
--     .turnin 98156 >> Turn in Packaged Pristine Pelts
--     .target Kimberly Grant
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
    .goto Stranglethorn Vale,27.120,77.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 605 >>Accept Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto Stranglethorn Vale,27.04,77.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
    .home >> Set your Hearthstone to Booty Bay
    .target Innkeeper Skindle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
    .accept 213 >> Accept Hostile Takeover
    .goto Stranglethorn Vale,27.000,77.124
    .accept 198 >>Accept Supplies to Private Thorsen
    .accept 201 >>Accept Investigate the Camp
    .accept 616 >>Accept The Haunted Isle
    .goto Stranglethorn Vale,26.943,77.207
    .target Kebok
    .target Krazek
step
    .goto Stranglethorn Vale,27.22,76.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 616 >> Turn in The Haunted Isle
    .accept 578 >> Accept The Stone of the Tides
    .target Baron Revilgaz
step
    .goto Stranglethorn Vale,28.294,77.592
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 575 >> Accept Supply and Demand
    .target Drizzlik
step
    #completewith next
    .destroy 3898 >>Throw away the |T134939:0|t[Library Scrip]
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
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 35-36 Stranglethorn Vale
#next 36-36 Arathi Highlands
#defaultfor Dwarf/Gnome


step
    #completewith next
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514
    .zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
    #completewith Fern
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
    >>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
    >>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
    .accept 215 >> Accept Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    #label ThorsenR
    .goto Stranglethorn Vale,37.980,3.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r at the Rebel Camp
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Private Thorsen|r isn't at the Rebel Camp he may be in progress for his special event. Skip this step. Look for him down the path if you havn't accepted his quest yet|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .target Private Thorsen
step
    .goto Stranglethorn Vale,38.017,3.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 203 >>Accept The Second Rebellion
    .accept 204 >>Accept Bad Medicine
    .target Sergeant Yohwa
step
    .goto Stranglethorn Vale,38.0,3.0
    .isOnQuest 215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 215 >> Turn in Jungle Secrets
    .accept 200 >> Accept Bookie Herod
    .target Lieutenant Doren
step
    #completewith Fern
    >>Kill |cRXP_ENEMY_Stone Maw Basilisks|r and |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
    >>|cRXP_ENEMY_Stone Maw Basilisks|r |cRXP_WARN_and|r |cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
    .goto Stranglethorn Vale,24.4,17.2,0
    .goto Stranglethorn Vale,48.48,8.85,0
    .complete 605,1
    .mob Stone Maw Basilisk
    .mob Crystal Spine Basilisk
step
    >>Skippable quest, prio one person
    #completewith Fern
    .goto Stranglethorn Vale,32.6,8.8,0
    .goto Stranglethorn Vale,36.8,10.6,0
    .goto Stranglethorn Vale,40.8,13.8,0
    >>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 575,1 
    .mob River Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 583 >> Accept Welcome to the Jungle
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Turn in Welcome to the Jungle
    .goto Stranglethorn Vale,35.658,10.808
    .target Barnil Stonepot
    .target Hemet Nesingwary
step
    #optional
    .isOnQuest 5762
    .goto Stranglethorn Vale,35.658,10.808
    .target Hemet Nesingwary
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 5762 >> Turn in Hemet Nesingwary
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50
    >>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 
    .mob Young Stranglethorn Tiger
step
    .goto Stranglethorn Vale,35.61,10.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >>Turn in Tiger Mastery
    .accept 186 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    #completewith next
    .goto Stranglethorn Vale,44.93,10.25,0
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 
    .complete 204,1 
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    #label Fern
    .goto Stranglethorn Vale,44.086,9.538
    >>Open the |cRXP_PICK_Kurzen Supplies|r. Loot it for the |cRXP_LOOT_Venom Fern Extract|r
    .complete 204,2 
step
    .isOnQuest 200
    .isQuestTurnedIn 215
    #completewith next
    .goto Stranglethorn Vale,44.93,10.25,0
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 
    .complete 204,1 
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    .isOnQuest 200
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,43.669,9.372
    >>Click on |cRXP_PICK_Bookie Herod's Records|r upstairs in the house
    .turnin 200 >> Turn in Bookie Herod
    .accept 328 >> Accept The Hidden Key
step
    .goto Stranglethorn Vale,44.93,10.25
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r and |cRXP_ENEMY_Kurzen Medicine Men|r. Loot the |cRXP_ENEMY_Kurzen Medicine Men|r for their |cRXP_LOOT_Jungle Remedies|r
    >>|cRXP_ENEMY_Kurzen Medicine Men|r |cRXP_WARN_also drop|r |T134413:0|t[Liferoot]|cRXP_WARN_. Save these for your|r |T132403:0|t[|cFF0070FFWhirlwind Axe|r] |cRXP_WARN_quest later|r << Warrior
    >>|cRXP_WARN_Hold onto any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you find. Trade or sell duplicates|r
    .complete 203,1 
    .complete 204,1 
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
step
    .goto Stranglethorn Vale,46.75,15.81
    >>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
    .complete 186,1 
    .mob Stranglethorn Tiger
step
    #sticky
    #label hostileTakeover
    .goto Stranglethorn Vale,45.18,22.65,75,0
    .goto Stranglethorn Vale,45.55,18.78,75,0
    .goto Stranglethorn Vale,43.42,17.00,75,0
    .goto Stranglethorn Vale,45.18,22.65,75,0
    .goto Stranglethorn Vale,45.55,18.78
    >>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for their |cRXP_LOOT_Crystals|r
    .complete 213,1 
    .mob Venture Co. Geologist
step
    >>This quest is sharable, one of you can stay and farm geologists
    .goto Stranglethorn Vale,51.0,35.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knaz Blunderflame|r
    .accept 97420 >> Accept Reduce, Reuse, Reconcile
    .target Knaz Blunderflame
step
    >>Kill |cRXP_ENEMY_Venture Co. Mechanics|r. Loot them for their |cRXP_LOOT_Crude Oil|r
    .complete 97420,1
step
    #requires hostileTakeover
    .goto Stranglethorn Vale,51.0,35.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knaz Blunderflame|r
    .turnin 97420 >> Turn in Reduce, Reuse, Reconcile
    .target Knaz Blunderflame
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
    .goto Stranglethorn Vale,38.017,3.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 203 >> Turn in The Second Rebellion
    .turnin 204 >> Turn in Bad Medicine
    .target Sergeant Yohwa
step
    .goto Stranglethorn Vale,37.740,3.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .accept 210 >> Accept Krazek's Cookery
    .target Corporal Kaleb
step
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 215 >> Turn in Jungle Secrets
    .isOnQuest 215
    .target Lieutenant Doren
step
    .isOnQuest 198
    .goto Stranglethorn Vale,38.01,3.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .target Private Thorsen
step
    #completewith next
    .goto Stranglethorn Vale,32.6,8.8,0
    .goto Stranglethorn Vale,36.8,10.6,0
    .goto Stranglethorn Vale,40.8,13.8,0
    >>Skippable quest, prio one person
    >>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for their |cRXP_LOOT_Skin|r
    .complete 575,1 
    .mob River Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 194 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 186 >> Turn in Tiger Mastery
    .accept 187 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >>Turn in Panther Mastery
    .accept 191 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #completewith next
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 
    .mob Panther
step
    .goto Stranglethorn Vale,31.52,16.61,60,0
    .goto Stranglethorn Vale,31.91,19.93,60,0
    .goto Stranglethorn Vale,34.36,18.58,60,0
    .goto Stranglethorn Vale,31.52,16.61,60,0
    .goto Stranglethorn Vale,31.91,19.93
    >>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
    .complete 187,1 
    .mob Elder Stranglethorn Tiger
step
    .goto Stranglethorn Vale,30.4,12.4,60,0
    .goto Stranglethorn Vale,29.4,8.8,60,0
    .goto Stranglethorn Vale,28.2,12.0,60,0
    .goto Stranglethorn Vale,28.2,16.4,60,0
    .goto Stranglethorn Vale,29.8,11.2
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 
    .mob Panther
step
    #completewith next
    .goto Stranglethorn Vale,27.35,18.52,0
    .goto Stranglethorn Vale,25.53,17.73,0
    .goto Stranglethorn Vale,23.25,17.21,0
    >>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
    >>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
    .complete 605,1 
    .mob Crystal Spine Basilisk
step
    .goto Stranglethorn Vale,27.61,15.39,60,0
    .goto Stranglethorn Vale,25.91,16.33,60,0
    .goto Stranglethorn Vale,24.24,15.84,60,0
    .goto Stranglethorn Vale,27.16,16.06
    >>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
    .complete 194,1 
    .mob Stranglethorn Raptor
step
    .goto Stranglethorn Vale,27.35,18.52,50,0
    .goto Stranglethorn Vale,25.53,17.73,50,0
    .goto Stranglethorn Vale,23.25,17.21,50,0
    .goto Stranglethorn Vale,25.53,17.73
    >>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r. Loot them for their |cRXP_LOOT_Shards|r
    >>|cRXP_ENEMY_Crystal Spine Basilisks|r |cRXP_WARN_will cast|r |T132154:0|t[Crystal Gaze] |cRXP_WARN_which is a 6 second long stun. Simply move out of their melee range when they begin to cast to avoid it|r
    .complete 605,1 
    .mob Crystal Spine Basilisk
step
    .goto Stranglethorn Vale,21.580,21.842
    .goto Stranglethorn Vale,21.580,21.842 >> Travel to the Haunted Island
    .complete 578,1
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #completewith next
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 194 >> Turn in Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 187 >> Turn in Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 191 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
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
step
    #completewith next
    .hs >> Hearth to Booty Bay
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Stranglethorn Vale,27.120,77.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 605 >> Turn in Singing Blue Shards
    .target Crank Fizzlebub
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r and |cRXP_FRIENDLY_Krazek|r up stairs on the top floor
    .turnin 213 >>Turn in Hostile Takeover
    .accept 189 >> Accept Bloodscalp Ears
    .goto Stranglethorn Vale,27.000,77.124
    .turnin 201 >> Turn in Investigate the Camp
    .turnin 210 >> Turn in Krazek's Cookery
    .goto Stranglethorn Vale,26.943,77.207
    .target Kebok
    .target Krazek
step
    .goto Stranglethorn Vale,27.227,76.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 578 >> Turn in The Stone of the Tides
    .accept 601 >> Accept Water Elementals
    .target Baron Revilgaz
step
    .isQuestComplete 575
    .goto Stranglethorn Vale,28.294,77.592
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 575 >> Turn in Supply and Demand
    .accept 577 >> Accept Some Assembly Required
    .target Drizzlik
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
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
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Fly to Ironforge
    .target Thor
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
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 36-36 Arathi Highlands
#next 36-37 City of Dalaran
#defaultfor Dwarf/Gnome


step
    #completewith LeaveSS
    >>|cRXP_WARN_From this point on, assume all quests are worth picking up to read|r
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
    >>Kill the |cRXP_ENEMY_Forsaken Courier|r. Loot it for the |cRXP_LOOT_Sealed Folder|r
    .complete 658,1 
    .unitscan Forsaken Courier
step
    .goto Arathi Highlands,60.185,53.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
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
    .goto 1424,48.33,60.09
    .target Emissary Jacques
    >>Talk to |cRXP_FRIENDLY_Emissary Jacques|r
    .accept 92432 >> Accept An Alarming Request
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
#name 36-37 City of Dalaran
#next 37-38 Desolace
#defaultfor Dwarf/Gnome


step
    .accept 92456 >> Accept A Green Sample
    .accept 92489 >> Accept Power Overwhelming
step
    .goto 1421,68.58,45.20
    .target Image of Archmage Modera
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92432 >> Turn in An Alarming Request
    .accept 92457 >> Accept Starving Arcane
    .accept 92458 >> Accept Heart of Disruption
step
    .goto 1421,69.33,45.61,5,0
    .goto 1416,8.84,59.60,5 >> extremely challenging jump >:)
step
    >> Do the dungeon quests. You will very likely have to run twice for Starving Arcane, plan to boss rush twice
    .complete 92456,1
    .complete 92489,1
    .complete 92458,1
    .complete 92457,1
    .complete 92457,2
    .complete 92457,3
step
    .goto 1421,68.58,45.20
    .target Image of Archmage Modera
    >>Talk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92457 >> Turn in Starving Arcane
    .turnin 92458 >> Turn in Heart of Disruption
    .accept 92432 >> Accept Friend of the Kirin Tor
step
    #completewith next
    >> Go around front and enter Dalaran
    .goto 1416,21.89,83.10,20
step
    .goto 1416,9.91,62.93
    .target Magus Olvek
    >>Talk to |cRXP_FRIENDLY_Magus Olvek|r
    .accept 96800 >> Accept Past Due
step
    .goto 1416,14.19,60.14
    .target Archmage Celindra
    >>Talk to |cRXP_FRIENDLY_Archmage Celindra|r
    .turnin 92432 >> Turn in Friend of the Kirin Tor
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
step
    .goto Stormwind City,48.14,87.42,25,0
    .goto Stormwind City,48.80,87.61
    >>Climb the tower and talk to |cRXP_FRIENDLY_High Sorcerer Andromath|r
    .turnin 92489 >> Turn in Power Overwhelming
    .target High Sorcerer Andromath
step
    .goto Stormwind City,31.35,62.90
    >>Talk to |cRXP_FRIENDLY_Shylamiir|r
    .turnin 92456 >> Turn in A Green Sample
    .target Shylamiir
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 37-38 Desolace
#next 38-39 Stranglethorn Vale
#defaultfor Dwarf/Gnome


step
    #optional
    #completewith next
    .goto 1453,41.882,49.433,20 >> Go to Stormwind Harbor
step
    .goto 1453,22.559,56.108
    .zone 1439 >> Take the boat to Darkshore
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Stonetalon >> Fly to Stonetalon Mountains
    .target Caylais Moonfeather
step
    #map Stonetalon Mountains
    #completewith next
    .goto Desolace,53.958,3.436
    .zone Desolace >> Travel to Desolace
step
    .goto Desolace,67.28,15.00,40 >> Travel to the path leading to Nijel's Point in Desolace
step
    .goto Desolace,66.44,11.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .accept 1437 >> Accept Vahlarriel's Search
    .target Vahlarriel Demonslayer
step
    .goto Desolace,64.66,10.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baritanas Skyriver|r
    .fp Desolace >> Get the Desolace Flight Path
    .target Baritanas Skyriver
step
    #label DesolaceArrive
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lyshaerya|r
    .goto Desolace,66.275,6.554
    .home >> Set your Hearthstone to Nijel's Point
    .target Innkeeper Lyshaerya
step
    .goto Desolace,66.519,7.907
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Anton|r
    .accept 261 >> Accept Down the Scarlet Path
    .target Brother Anton
step
    .goto Desolace,66.201,9.626
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1453 >> Turn in Reclaimers' Business in Desolace
    .accept 1458 >> Accept Reagents for Reclaimers Inc.
    .accept 1454 >> Accept The Karnitol Shipwreck
    .target Kreldig Ungor
step
    .goto Desolace,66.74,10.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r and |cRXP_FRIENDLY_Captain Pentigast|r
    .accept 1387 >> Accept Centaur Bounty
    .goto Desolace,66.743,10.872
    .accept 1382 >> Accept Strange Alliance
    .goto Desolace,66.665,10.933
    .target Corporal Melkins
    .target Captain Pentigast
step
    .goto Desolace,72.96,18.47,70,0
    .goto Desolace,79.45,17.65,70,0
    .goto Desolace,78.09,22.50,70,0
    .goto Desolace,76.32,25.08,70,0
    .goto Desolace,73.96,22.05,70,0
    .goto Desolace,72.51,17.93
    >>Kill |cRXP_ENEMY_Hatefury Satyrs|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Horns|r
    .complete 1458,1 
    .complete 1458,2 
    .mob Hatefury Trickster
    .mob Hatefury Shadowstalker
    .mob Hatefury Hellcaller
    .mob Hatefury Betrayer
step
    .isQuestComplete 1458
    .goto Desolace,66.201,9.626
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1458 >> Turn in Reagents for Reclaimers Inc.
    .accept 1459 >> Accept Reagents for Reclaimers Inc.
    .target Kreldig Ungor
step
    #completewith ReagentsOne
    >>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
    .complete 1459,1 
    .complete 1459,2 
    .mob Scorpashi Snapper
    .mob Scorpashi Lasher
    .mob Aged Kodo
step
    .goto Desolace,56.522,17.844
    >>Click the |cRXP_PICK_Malem Chest|r on the ground
    .turnin 1437 >> Turn in Vahlarriel's Search
    .accept 1465 >> Accept Vahlarriel's Search
step
    .goto Desolace,39.295,28.839,50,0
    .goto Desolace,38.884,27.162
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .accept 5741 >> Accept Sceptre of Light
    .target Azore Aldamort
step
    .goto Desolace,39.295,28.839,50,0
    .goto Desolace,38.884,27.162
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .accept 5741 >> Accept Sceptre of Light
    .target Azore Aldamort
step
    .goto Desolace,36.111,30.451
    >>Click |cRXP_PICK_Karnitol's Chest|r on the ground
    .turnin 1454 >> Turn in The Karnitol Shipwreck
    .accept 1455 >> Accept The Karnitol Shipwreck
step
    .goto Desolace,36.111,30.451
    >>Click |cRXP_PICK_Karnitol's Chest|r on the ground
    .turnin 1454 >> Turn in The Karnitol Shipwreck
    .accept 1455 >> Accept The Karnitol Shipwreck
step
    #label ReagentsOne
    .goto Desolace,36.069,30.407
    >>Click |cRXP_PICK_Rackmore's Log|r on the small barrel
    .accept 6161 >> Accept Claim Rackmore's Treasure!
step
    .goto Desolace,31.4,28.2,70,0
    .goto Desolace,34.2,32.6,70,0
    .goto Desolace,30.6,34.6,70,0
    .goto Desolace,33.2,31.6
    >>Kill |cRXP_ENEMY_Drysnap Pincers|r and |cRXP_ENEMY_Drysnap Crawlers|r. Loot them for |cRXP_LOOT_Rackmore's Silver Key|r
    >>|cRXP_WARN_Buff yourself with|r |T136148:0|t[Underwater Breathing] << Warlock
    >>Use an |T134797:0|t[Elixir of Water Breathing] if you have one << !Warlock
    .use 5996 
    .complete 6161,1 
    .mob Drysnap Pincer
    .mob Drysnap Crawler
step
    .goto Desolace,31.4,28.2,70,0
    .goto Desolace,34.2,32.6,70,0
    .goto Desolace,30.6,34.6,70,0
    .goto Desolace,33.2,31.6
    >>Kill |cRXP_ENEMY_Drysnap Pincers|r and |cRXP_ENEMY_Drysnap Crawlers|r. Loot them for |cRXP_LOOT_Rackmore's Silver Key|r
    >>|cRXP_WARN_Buff yourself with|r |T136148:0|t[Underwater Breathing] << Warlock
    >>Use an |T134797:0|t[Elixir of Water Breathing] if you have one << !Warlock
    .use 5996 
    .complete 6161,1 
    .mob Drysnap Pincer
    .mob Drysnap Crawler
step
    #completewith next
    .hs >> Hearth to Nijel's Point
    >>|cRXP_BUY_Buy food/water if needed|r
    .cooldown item,6948,>0,1
step
    #completewith next
    .subzone 608 >> Travel to Nijel's Point
step
    .goto Desolace,66.201,9.626
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1455 >> Turn in The Karnitol Shipwreck
    .accept 1456 >> Accept The Karnitol Shipwreck
    .target Kreldig Ungor
step
    .goto Desolace,66.201,9.626
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1455 >> Turn in The Karnitol Shipwreck
    .accept 1456 >> Accept The Karnitol Shipwreck
    .target Kreldig Ungor
step
    .goto Desolace,66.44,11.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 1465 >> Turn in Vahlarriel's Search
    .accept 1438 >> Accept Vahlarriel's Search
    .target Vahlarriel Demonslayer
step
    #completewith ReagentsTwo
    >>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
    .complete 1459,1 
    .complete 1459,2 
    .mob Scorpashi Snapper
    .mob Scorpashi Lasher
    .mob Aged Kodo
step
    #completewith next
    .goto Desolace,55.75,28.88,110 >> Travel to Thunder Axe Fortress
step
    .isOnQuest 5741
    .goto Desolace,55.170,30.149
    >>Ascend the Watchtower
    >>Kill the |cRXP_ENEMY_Burning Blade Seer|r atop the Tower. Loot it for the |cRXP_LOOT_Sceptre|r
    >>|cRXP_WARN_There may only ever be 1 |cRXP_ENEMY_Burning Blade Seer|r. You may need to wait for a respawn|r
    .complete 5741,1 
    .mob Burning Blade Seer
step
    #completewith next
    #label ReagentsTwo
    .goto Desolace,55.31,27.45,25 >> Enter the main Fortress
step
    .goto Desolace,54.859,26.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
    .turnin 1438 >> Turn in Vahlarriel's Search
    .accept 1439 >> Accept Search for Tyranis
    .target Dalinda Malem
step
    #completewith next
    .goto Desolace,53.32,29.18,25 >> Enter the secondary Fortress
step
    >>Kill |cRXP_ENEMY_Tyranis Malem|r. Loot him for his |cRXP_LOOT_Pendant|r
    .goto Desolace,53.008,29.078
    .complete 1439,1 
    .mob Tyranis Malem
step
    #completewith next
    .goto Desolace,55.31,27.45,25 >> Travel back towards |cRXP_FRIENDLY_Dalinda Malem|r
step
    #completewith next
    .goto Desolace,54.859,26.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
    .turnin 1439 >> Turn in Search for Tyranis
    .target Dalinda Malem
step
    .goto Desolace,54.859,26.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalinda Malem|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 1440,1 >> Accept Return to Vahlarriel
    .target Dalinda Malem
step
    .goto Desolace,58.26,30.94
    >>Safely exit Thunder Axe Fortress with |cRXP_FRIENDLY_Dalinda Malem|r
    .complete 1440,1 
    .target Dalinda Malem
step
    #completewith ReagentsThree
    >>Kill |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
    .complete 1459,1 
    .complete 1459,2 
    .mob Scorpashi Snapper
    .mob Scorpashi Lasher
    .mob Aged Kodo
step
    .goto Desolace,62.314,38.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .accept 5501 >> Accept Bone Collector
    .target Bibbly F'utzbuckle
step
    #optional
    .goto Desolace,60.863,61.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .accept 5561 >> Accept Kodo Roundup
    .target Smeed Scrabblescrew
    .xp 36,1
step
    .goto Desolace,68.8,71.2,75,0
    .goto Desolace,65.2,75.6,75,0
    .goto Desolace,70.0,81.0,75,0
    .goto Desolace,70.0,74.6,75,0
    .goto Desolace,73.8,65.8,75,0
    .goto Desolace,69.4,73.4
    >>Kill |cRXP_ENEMY_Magram Centaurs|r. Loot them for their |cRXP_LOOT_Ears|r
    >>|cRXP_WARN_Continue killing |cRXP_ENEMY_Magram Centaurs|r until you've reached |cRXP_FRIENDLY_Friendly|r reputation standing with Gelkis Clan Centaur|r
    .complete 1387,1 
    .complete 1382,1 
    .mob Magram Marauder
    .mob Magram Mauler
    .mob Magram Outrunner
    .mob Magram Pack Runner
    .mob Magram Scout
    .mob Magram Stormer
    .mob Magram Windchaser
    .mob Magram Wrangler
step
    #sticky
    #completewith KodoBones
    #label KodoTaming
    .isOnQuest 5561
    .goto Desolace,51.668,58.244
    .goto Desolace,60.863,61.859,0
    .use 13892 >>|cRXP_WARN_Use the|r |T132488:0|t[Kodo Kombobulator] |cRXP_WARN_on |cRXP_ENEMY_Ancient Kodos|r and |cRXP_ENEMY_Dying Kodos|r. Take them back to|r |cRXP_FRIENDLY_Smeed|r
    >>|cRXP_WARN_You may only take 1 |cRXP_FRIENDLY_Tamed Kodo|r back at a time|r
    >>While you can't have more than one tamed kodo following you at the time it's possible to use the item in combat as long as you dont take damage. |cRXP_WARN_You can try kiting multiple at a time and have your pet hold aggro while you tame them next to the quest giver|r << Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Tamed Kodo|r once you've taken it back to|r |cRXP_FRIENDLY_Smeed|r
    .skipgossip
    .complete 5561,1 
    .target Tamed Kodo
    .mob Ancient Kodo
    .mob Dying Kodo
    .xp 36,1
step
    #sticky
    #requires KodoTaming
    #completewith KodoBones
    .isQuestComplete 5561
    .goto Desolace,60.863,61.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5561 >> Turn in Kodo Roundup
    .target Smeed Scrabblescrew
step
    #label KodoBones
    .goto Desolace,52.50,58.56
    >>Loot |cRXP_LOOT_Kodo Bones|r around the graveyard
    >>|cRXP_WARN_Looting them may cause |cRXP_ENEMY_Kodo Apparitions|r to spawn. |cRXP_ENEMY_Kodo Apparitions|r do not drop|r |cRXP_LOOT_Kodo Bones|r
    .complete 5501,1 
step
    .isOnQuest 5561
    .goto Desolace,51.668,58.244
    .goto Desolace,60.863,61.859,0
    .use 13892 >>|cRXP_WARN_Use the|r |T132488:0|t[Kodo Kombobulator] |cRXP_WARN_on |cRXP_ENEMY_Ancient Kodos|r and |cRXP_ENEMY_Dying Kodos|r. Take them back to|r |cRXP_FRIENDLY_Smeed|r
    >>|cRXP_WARN_You may only take 1 |cRXP_FRIENDLY_Tamed Kodo|r back at a time|r
    >>While you can't have more than one tamed kodo following you at the time it's possible to use the item in combat as long as you dont take damage. |cRXP_WARN_You can try kiting multiple at a time and have your pet hold aggro while you tame them next to the quest giver|r << Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Tamed Kodo|r once you've taken it back to|r |cRXP_FRIENDLY_Smeed|r
    .skipgossip
    .complete 5561,1 
    .target Tamed Kodo
    .mob Ancient Kodo
    .mob Dying Kodo
    .maxlevel 36
step
    #sticky
    #requires KodoBones
    .isQuestComplete 5561
    .goto Desolace,60.863,61.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5561 >> Turn in Kodo Roundup
    .target Smeed Scrabblescrew
step
    >> This chain unlocks the new centaur quests around honored
    .goto Desolace,36.234,79.245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1382 >> Turn in Strange Alliance
    .accept 1384 >> Accept Raid on the Kolkar
    .target Uthek the Wise
step
    .goto Desolace,70.0,41.6,70,0
    .goto Desolace,73.6,44.6,70,0
    .goto Desolace,70.2,47.2,70,0
    .goto Desolace,73.4,51.5,70,0
    .goto Desolace,71.6,45.6
    >>Kill the |cRXP_ENEMY_Kolkar|r. Loot them for their |cRXP_LOOT_Charms|r
    .complete 1384,1 
    .mob Kolkar Centaur
    .mob Kolkar Scout
    .mob Kolkar Windchaser
    .mob Kolkar Mauler
    .mob Kolkar Destroyer
    .mob Kolkar Battle Lord
    .mob Kolkar Waylayer
    .mob Kolkar Ambusher
step
    .goto Desolace,36.234,79.245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1384 >> Turn in Raid on the Kolkar
    .accept 1370 >> Accept Stealing Supplies
    .target Uthek the Wise
step
    .goto Desolace,66.5,80.5,50,0
    .goto Desolace,70.9,75.5,50,0
    .goto Desolace,72.5,78.6,50,0
    .goto Desolace,74.1,72.7,50,0
    .goto Desolace,66.5,80.5,50,0
    .goto Desolace,70.9,75.5,50,0
    .goto Desolace,72.5,78.6,50,0
    .goto Desolace,74.1,72.7,50,0
    .goto Desolace,70.9,75.5
    >>Open the |cRXP_PICK_Sacks of Meat|r. Loot them for the |cRXP_LOOT_Crudely Dried Meats|r
    .complete 1370,1 
step
    .goto Desolace,36.234,79.245
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1370 >> Turn in Stealing Supplies
    .accept 1373 >> Accept Ongeku
    .target Uthek the Wise
step
    #label ReagentsThree
    .goto Desolace,62.32,38.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >> Turn in Bone Collector
    .target Bibbly F'utzbuckle
step
    .isOnQuest 1459
    >>Kill |cRXP_ENEMY_Scorpashi Snappers|r, |cRXP_ENEMY_Scorpashi Lashers|r and |cRXP_ENEMY_Scorpashi Venomlashs|r. Loot them for their |cRXP_LOOT_Venom|r
    >>Kill |cRXP_ENEMY_Aged Kodos|r. Loot them for their |cRXP_LOOT_Aged Kodo Hides|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gritjaw Basilisks|r to force |cRXP_ENEMY_Scorpashi Snappers|r and |cRXP_ENEMY_Scorpashi Lashers|r to spawn|r
    >>|cRXP_WARN_You must complete this step now|r
    .complete 1459,1 
    .goto Desolace,70.4,63.0,80,0
    .goto Desolace,58.6,50.0,80,0
    .goto Desolace,41.4,48.2,80,0
    .goto Desolace,43.6,75.2
    .complete 1459,2 
    .goto Desolace,52.19,57.50,70,0
    .goto Desolace,62.13,60.65,70,0
    .goto Desolace,63.86,68.83,70,0
    .goto Desolace,52.19,57.50
    .mob Scorpashi Snapper
    .mob Scorpashi Lasher
    .mob Scorpashi Venomlash
    .mob Aged Kodo
step
    #label ReagentsFour
    .goto Desolace,38.884,27.162
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 5741 >> Turn in Sceptre of Light
    .target Azore Aldamort
step
    .goto Desolace,38.884,27.162
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .accept 6027 >> Accept Book of the Ancients
    .target Azore Aldamort
    .maxlevel 37
step
    .isOnQuest 6161
    #completewith BookofAncients
    >>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
    .complete 6161,2 
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tidehunter
    .mob Slitherblade Naga
    .mob Slitherblade Sorceress
    .mob Slitherblade Myrmidon
    .mob Slitherblade Oracle
    .mob Slitherblade Razortail
step
    .isOnQuest 1456
    #completewith BookofAncients
    >>Kill |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r. Loot them for |cRXP_LOOT_Karnitol's Satchel|r
    .complete 1456,1 
    .mob Slitherblade Tidehunter
    .mob Slitherblade Sea Witch
step
    .isOnQuest 6027
    #label BookofAncients
    .goto Desolace,28.250,6.670
    >>Click the |cRXP_PICK_Serpent Statue|r to summon |cRXP_ENEMY_Lord Kragaru|r
    >>Kill |cRXP_ENEMY_Lord Kragaru|r. Loot him for the |cRXP_LOOT_Book of the Ancients|r
    .complete 6027,1 
    .mob Lord Kragaru
step
    .isOnQuest 6161
    #completewith next
    >>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
    .complete 6161,2 
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tidehunter
    .mob Slitherblade Naga
    .mob Slitherblade Sorceress
    .mob Slitherblade Myrmidon
    .mob Slitherblade Oracle
    .mob Slitherblade Razortail
step
    .isOnQuest 1456
    .goto Desolace,28.06,10.86,70,0
    .goto Desolace,30.87,8.41,70,0
    .goto Desolace,30.6,15.8,70,0
    .goto Desolace,33.2,10.6,70,0
    .goto Desolace,30.8,8.0
    >>Kill |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r. Loot them for |cRXP_LOOT_Karnitol's Satchel|r
    >>|cRXP_WARN_You may also find |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r in the water|r
    .complete 1456,1 
    .mob Slitherblade Tidehunter
    .mob Slitherblade Sea Witch
step
    .isOnQuest 6161
    .goto Desolace,28.06,10.86,70,0
    .goto Desolace,30.87,8.41,70,0
    .goto Desolace,30.6,15.8,70,0
    .goto Desolace,33.2,10.6,70,0
    .goto Desolace,30.8,8.0
    >>Kill the |cRXP_ENEMY_Slitherblades|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
    .complete 6161,2 
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tidehunter
    .mob Slitherblade Naga
    .mob Slitherblade Sorceress
    .mob Slitherblade Myrmidon
    .mob Slitherblade Oracle
    .mob Slitherblade Razortail
step
    >>Click |cRXP_PICK_Rackmore's Chest|r on the ground
    .goto Desolace,30.005,8.706
    .turnin 6161 >>Turn in Claim Rackmore's Treasure!
step
    .goto Desolace,38.884,27.162
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 6027 >>Turn in Book of the Ancients
    .target Azore Aldamort
step
    #completewith next
    .hs >> Hearth to Nijel's Point
    >>|cRXP_BUY_Buy food/water if needed|r
    .cooldown item,6948,>0,1
step
    .subzone 608 >> Travel to Nijel's Point
step
    .isQuestTurnedIn 1455
    .goto Desolace,66.201,9.626
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1456 >> Turn in The Karnitol Shipwreck
    .accept 1457 >> Accept The Karnitol Shipwreck
    .target Kreldig Ungor
step
    #label ReagentsforReclaimersIncB
    .goto Desolace,66.201,9.626
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin -1459 >> Turn in Reagents for Reclaimers Inc.
    .target Kreldig Ungor
step
    .goto Desolace,66.201,9.626
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .isQuestTurnedIn 1459
    .accept 1466 >> Accept Reagents for Reclaimers Inc.
    .target Kreldig Ungor
step
    .goto Desolace,66.743,10.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
    .turnin 1387 >> Turn in Centaur Bounty
    .target Corporal Melkins
step
    .goto Desolace,66.44,11.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 1440 >> Turn in Return to Vahlarriel
    .target Vahlarriel Demonslayer
step
    .isOnQuest 1466
    .goto Desolace,51.72,83.92,0
    >>Kill |cRXP_ENEMY_Ley Hunters|r, |cRXP_ENEMY_Mana Eaters|r and |cRXP_ENEMY_Mage Hunters|r. Loot them for their |cRXP_LOOT_Brains|r
    >>Kill |cRXP_ENEMY_Nether Sisters|r, |cRXP_ENEMY_Nether Maidens|r and |cRXP_ENEMY_Nether Sorceresses|r. Loot them for their |cRXP_LOOT_Wings|r
    >>Kill |cRXP_ENEMY_Doomwarder Captains|r. Loot them for their |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_Doomwarder Captains|r as you may need to wait for their respawns. Regular |cRXP_ENEMY_Doomwarders|r do not drop |cRXP_LOOT_Blood|r. You could also ask someone to invite you so you change layers|r
    .complete 1466,1 
    .goto Desolace,50.6,81.6,70,0
    .goto Desolace,51.6,85.8,70,0
    .goto Desolace,53.6,84.6,70,0
    .goto Desolace,53.6,77.6,70,0
    .goto Desolace,56.6,75.6,70,0
    .goto Desolace,53.0,68.6,70,0
    .goto Desolace,53.6,77.6
    .complete 1466,2 
    .goto Desolace,54.6,78.2,70,0
    .goto Desolace,50.6,71.6,70,0
    .goto Desolace,48.8,77.6,70,0
    .goto Desolace,54.6,78.2,70,0
    .goto Desolace,50.6,71.6,70,0
    .goto Desolace,48.8,77.6
    .complete 1466,3 
    .goto Desolace,51.72,83.92
    .mob Ley Hunter
    .mob Mana Eater
    .mob Mage Hunter
    .mob Nether Sister
    .mob Nether Maiden
    .mob Nether Sorceress
    .mob Doomwarder Captain
step
    .isQuestComplete 1466
    .goto Desolace,66.20,9.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1466 >> Turn in Reagents for Reclaimers Inc.
    .accept 1467 >> Accept Reagents for Reclaimers Inc.
    .target Kreldig Ungor
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
step
    .goto Ironforge,67.91,17.50,25,0
    .goto Ironforge,69.93,21.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
    .turnin 1457 >> Turn in The Karnitol Shipwreck
    .accept -1467 >> Turnin Reagents for Reclaimers Inc.
    .target Roetten Stonehammer
    .isOnQuest 1457
step
    .goto 1455/0,-1330.28,-4840.430
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
step
    .goto 1453,69.43,40.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brohann Caskbelly|r
    .accept 1448 >>Accept In Search of The Temple
    .target Brohann Caskbelly
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 38-39 Stranglethorn Vale
#next 39-40 Dustwallow
#defaultfor Dwarf/Gnome


step
    #label FlyDW
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto Stormwind City,66.277,62.137
    .fly Duskwood >>Fly to Duskwood
    .target Dungar Longdrink
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Set your Hearthstone to Duskwood
    .target Innkeeper Trelayne
step
    #label TravelSoS
    #completewith SoSEntry
    .goto Duskwood,89.75,41.31,0
    .goto Swamp of Sorrows,6.59,60.19
    .zone Swamp of Sorrows >> Travel to Swamp of Sorrows
step
    #completewith endSoS
    #requries TravelSoS
    +While questing in Swamp of Sorrows watch out for |cRXP_ENEMY_Stonard Explorers|r they can be found on roads and in camps scattered around the zone.
    >>|cRXP_WARN_While not dangerous on their own any hostile action towards them WILL PVP FLAG YOU|r
    .unitscan Stonard Explorer
step
    #label SoSEntry
    .goto Swamp of Sorrows,26.74,59.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .accept 1396 >>Accept Encroaching Wildlife
    .target Watcher Biggs
step
    #completewith NoboruTurnin
    .goto Swamp of Sorrows,28.20,43.83,0
    >>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
    .complete 1396,1 
    .complete 1396,2 
    .complete 1396,3 
    .mob Young Sawtooth Crocolisk
    .mob Sorrow Spinner
    .mob Swamp Jaguar
step
    #loop
    .goto Swamp of Sorrows,32.81,38.68,0,70
    .goto Swamp of Sorrows,34.88,45.88,0,70
    .goto Swamp of Sorrows,38.34,38.75,0,70
    .goto Swamp of Sorrows,40.53,32.83,0,70
    .goto Swamp of Sorrows,45.18,36.70,0,70
    .goto Swamp of Sorrows,50.58,39.02,0,70
    .goto Swamp of Sorrows,55.50,36.75,0,70
    .line Swamp of Sorrows,55.70,34.14,55.92,35.96,55.57,37.64,53.27,38.99,51.27,38.82,48.70,38.56,47.29,38.39,46.52,38.69,45.67,36.55,44.34,34.66,42.27,32.14,40.86,32.36,40.23,34.79,38.81,35.80,38.08,41.22,37.91,43.29,36.75,46.43,33.50,44.03,33.37,40.43,32.61,38.67,32.16,37.15,32.26,36.24,33.44,40.35,33.46,43.98,36.65,46.42,37.85,43.51,38.10,40.89,38.48,37.66,38.84,35.82,40.41,34.13,40.87,32.43,42.18,32.07,44.92,35.47,45.66,36.52,46.35,38.74,47.56,38.35,52.43,39.04,53.25,39.13,55.39,37.60
    >>Kill |cRXP_ENEMY_Noboru the Cudgel|r. Loot him for |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r]
    .use 6196 >>|cRXP_WARN_Use |T133485:0|t[|cRXP_LOOT_Noboru's Cudgel|r] to start the quest|r
    >>|cRXP_ENEMY_Noboru the Cudgel|r |cRXP_WARN_patrols a large section of Swamp of Sorrows. The patrol path is marked on your map. He spawns where the patrol route starts on the eastern point|r
    .collect 6196,1,1392,1 
    .accept 1392 >>Accept Noboru the Cudgel
    .unitscan Noboru the Cudgel
step
    #label NoboruTurnin
    .goto Swamp of Sorrows,25.983,31.412
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1392 >>Turn in Noboru the Cudgel
    .accept 1389 >>Accept Draenethyst Crystals
    .target Magtoor
step
    >>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r, |cRXP_ENEMY_Sorrow Spinners|r and |cRXP_ENEMY_Swamp Jaguars|r
    .complete 1396,1 
    .goto Swamp of Sorrows,23.0,45.6,70,0
    .goto Swamp of Sorrows,26.6,36.2,70,0
    .goto Swamp of Sorrows,39.0,34.8,70,0
    .goto Swamp of Sorrows,34.2,49.8,70,0
    .goto Swamp of Sorrows,26.6,52.4,70,0
    .goto Swamp of Sorrows,26.6,36.2,70,0
    .goto Swamp of Sorrows,39.0,34.8,70,0
    .goto Swamp of Sorrows,34.2,49.8,70,0
    .goto Swamp of Sorrows,26.6,52.4
    .complete 1396,2 
    .goto Swamp of Sorrows,19.2,54.6,70,0
    .goto Swamp of Sorrows,25.0,61.6,70,0
    .goto Swamp of Sorrows,33.2,51.8,70,0
    .goto Swamp of Sorrows,26.6,47.0,70,0
    .goto Swamp of Sorrows,37.6,30.0,70,0
    .goto Swamp of Sorrows,44.0,42.4,70,0
    .goto Swamp of Sorrows,26.6,47.0
    .complete 1396,3 
    .goto Swamp of Sorrows,22.8,42.4,70,0
    .goto Swamp of Sorrows,33.6,54.0,70,0
    .goto Swamp of Sorrows,47.8,39.8,70,0
    .goto Swamp of Sorrows,26.2,35.2,70,0
    .goto Swamp of Sorrows,23.2,59.8,70,0
    .goto Swamp of Sorrows,44.0,41.6
    .mob Young Sawtooth Crocolisk
    .mob Sorrow Spinner
    .mob Swamp Jaguar
step
    #label wildlife2
    .goto Swamp of Sorrows,26.74,59.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 1396 >>Turn in Encroaching Wildlife
    .accept 1421 >>Accept The Lost Caravan
    .target Watcher Biggs
step
    #completewith next
    .goto Swamp of Sorrows,57.29,30.73,200 >> Travel to Fallow Sanctuary
step
    #completewith EscortGalen
    .isOnQuest 1373
    .goto Swamp of Sorrows,65.036,21.976,0
    .goto Swamp of Sorrows,60.537,23.175,0
    >>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
    >>|cRXP_ENEMY_Ongeku|r |cRXP_WARN_can be in a random location throughout Fallow Sanctuary|r
    .complete 1373,1 
    .unitscan Ongeku
step
    #completewith OngekuShard
    .isOnQuest 1389
    >>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
    .goto Swamp of Sorrows,63.26,22.35,0
    .complete 1389,1 
step
    .isOnQuest 1421
    >>Open the |cRXP_PICK_Caravan Chest|r. Loot it for the |cRXP_LOOT_Wizards' Reagents|r
    >>|cRXP_WARN_Avoid going through the middle of Fallow Sanctuary|r
    .goto Swamp of Sorrows,64.468,18.313
    .complete 1421,1 
step
    .goto Swamp of Sorrows,65.471,18.153
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Goodward|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 1393 >>Accept Galen's Escape
    .target Galen Goodward
step
    #label EscortGalen
    .isOnQuest 1393
    .goto Swamp of Sorrows,53.045,29.644
    >>Escort |cRXP_FRIENDLY_Galen|r through Fallow Sanctuary to safety
    .complete 1393,1 
    .target Galen Goodward
step
    #label OngekuShard
    .isOnQuest 1373
    .goto Swamp of Sorrows,65.036,21.976,0
    .goto Swamp of Sorrows,65.036,21.976,55,0
    .goto Swamp of Sorrows,60.537,23.175
    >>Kill |cRXP_ENEMY_Ongeku|r. Loot him for his |cRXP_LOOT_Shard|r
    >>|cRXP_ENEMY_Ongeku|r |cRXP_WARN_can be in a random location throughout Fallow Sanctuary|r
    .complete 1373,1 
    .unitscan Ongeku
step
    .goto Swamp of Sorrows,47.806,39.760
    >>Click |cRXP_PICK_Galen's Strongbox|r on the ground
    .turnin 1393 >>Turn in Galen's Escape
step
    .isOnQuest 1389
    >>Loot the |cRXP_LOOT_Draenethyst Crystals|r on the ground
    .goto Swamp of Sorrows,65.15,21.92,70,0
    .goto Swamp of Sorrows,61.22,22.97,70,0
    .goto Swamp of Sorrows,57.43,26.08,70,0
    .goto Swamp of Sorrows,55.20,28.24,70,0
    .goto Swamp of Sorrows,57.43,26.08
    .complete 1389,1 
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .goto Swamp of Sorrows,25.983,31.412
    .turnin 1389 >>Turn in Draenethyst Crystals
    .target Magtoor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .goto Swamp of Sorrows,26.74,59.82
    .turnin 1421 >>Turn in The Lost Caravan
    .target Watcher Biggs
step
    #label endSoS
    .goto Swamp of Sorrows,67.00,47.00
    >>Swim to the middle of the Pool of Tears
    >>Be careful not to run too close to Stonard on your way there. Avoid fighting any of the higher level dragonkin on the way as well
    .complete 1448,1
step
    .hs >> Hearth to Duskwood
step
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514,40,0
    .goto Stranglethorn Vale,38.63,5.05
    .subzone 99 >> Travel to the Rebel Camp in northern Stranglethorn Vale
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r and |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 574 >> Accept Special Forces
    .goto Stranglethorn Vale,38.017,3.330
    .accept 207 >> Accept Kurzen's Mystery
    .goto Stranglethorn Vale,37.832,3.559
    .target Sergeant Yohwa
    .target Brother Nimetz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 195 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .accept 188 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 192 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
    .accept 97047 >> Accept The Cook in the Cage
    .target Wendel Mathers
step
    #completewith SpecialForces
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .complete 97047,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .goto Stranglethorn Vale,49.616,7.743
    >>Open the |cRXP_PICK_Kurzen Supply Crate|r. Loot it for the |cRXP_LOOT_Kurzen Fighter's Uniform|r
    .complete 97047,2
step
    #completewith next
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,49.617,7.562
    >>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
    .turnin 328 >> Turn in The Hidden Key
    .accept 329 >> Accept The Spy Revealed!
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .complete 97047,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label SpecialForces
    .goto Stranglethorn Vale,46.45,6.89,40,0
    .goto Stranglethorn Vale,47.89,7.77,40,0
    .goto Stranglethorn Vale,46.45,6.89
    >>Kill |cRXP_ENEMY_Kurzen Commandos|r and |cRXP_ENEMY_Kurzen Headshrinkers|r. Loot them for their |T132905:0|t[Silk Cloth]
    >>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Kurzen Commandos|r in|r |T132320:0|t[Stealth]
    >>|cRXP_WARN_Save 15|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for a quest for later in Searing Gorge. You don't need to collect all 15 now|r
    .collect 4306,15,4449,1,1 
    .complete 574,1 
    .complete 574,2 
    .mob Kurzen Commando
    .mob Kurzen Headshrinker
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,49.617,7.562
    >>Click |cRXP_PICK_Bookie Herod's Strongbox|r on the ground
    .turnin 328 >> Turn in The Hidden Key
    .accept 329 >> Accept The Spy Revealed!
step
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Exit the cave. Travel toward |cRXP_FRIENDLY_Wendel Mathers|r in the tower outside
step
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
    .turnin 97047 >> Turn in The Cook in the Cage
    .accept 97048 >> Accept Returning to Port
    .target Wendel Mathers
step
    .goto Stranglethorn Vale,48.64,22.95,75,0
    .goto Stranglethorn Vale,48.86,23.48
    .goto Stranglethorn Vale,48.79,19.96
    .goto Stranglethorn Vale,36.09,37.29,0
    >>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
    >>|cRXP_ENEMY_Shadowmaw Panthers|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
    >>|cRXP_WARN_You can find more further south-west if needed. The location is marked on your map|r
    >>|cRXP_WARN_They also share spawns with|r |cRXP_ENEMY_Shadowmaw Tigresses|r
    .complete 192,1 
    .mob Shadowmaw Panther
step
    #completewith next
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    >>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
    >>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
    .complete 195,1 
    .mob Lashtail Raptor
step
    .goto Stranglethorn Vale,38.10,20.50,70,0
    .goto Stranglethorn Vale,36.98,24.90,70,0
    .goto Stranglethorn Vale,34.24,26.16,70,0
    .goto Stranglethorn Vale,31.37,22.28
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    >>|cRXP_ENEMY_Lashtail Raptors|r |cRXP_WARN_cast|r |T132109:0|t[Lash] |cRXP_WARN_which is a 2 second stun|r
    >>|cRXP_WARN_They can also|r |T132343:0|t[Disarm] |cRXP_WARN_you for 5 seconds|r << Warrior/Rogue/Paladin
    .complete 195,1 
    .mob Lashtail Raptor
step
    >>Kill |cRXP_ENEMY_Sin'Dall|r. Loot him for his |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_Sin'Dall|r |cRXP_WARN_can be on top of the Plateau, or patrolling around it|r
    .goto Stranglethorn Vale,32.23,17.24
    .complete 188,1 
    .unitscan Sin'Dall
step
    >>This quest might tie into the Drowned City
    #completewith next
    .goto Stranglethorn Vale,29.471,19.119,70 >> Travel to the Bal'lal Ruins
step
    #completewith KurzenMystery1
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 189,1
step
    .goto Stranglethorn Vale,29.471,19.119
    >>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
    .complete 207,1 
step
    #completewith next
    .goto Stranglethorn Vale,24.719,8.905,150 >> Travel to the Ruins of Zul'Kunda
step
    .goto Stranglethorn Vale,24.719,8.905
    >>Open |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
    .complete 207,4 
step
    .goto Stranglethorn Vale,23.4,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zimmix Sputterspark|r
    .accept 97329 >> Accept Where's the Key?
    .target Zimmix Sputterspark
step
    #sticky
    #label primitiveKey
    >> Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for the |cRXP_LOOT_Primitive Key|r
    .complete 97329,1
step
    .goto Stranglethorn Vale,22.94,12.01
    >>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
    .complete 207,3 
step
    #requires primitiveKey
    .goto Stranglethorn Vale,23.4,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zimmix Sputterspark|r
    .turnin 97329 >> Turn in Where's the Key?
    .accept 97331,1 >> Accept Zimmix's Great Escape
    .target Zimmix Sputterspark
step
    >> Escort Zimmix to wherever he wants to go
    .complete 97331,1
step
    #optional
    #completewith next
    #label KurzenMystery1
    .goto Stranglethorn Vale,21.10,22.84,125 >> Travel to the Haunted Island
step
    .goto Stranglethorn Vale,21.10,22.84
    >>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 601,1 
    .mob Lesser Water Elemental
step
    #label UnderwaterLegend
    .goto Stranglethorn Vale,24.765,22.871
    >>Open |cRXP_PICK_Gri'lek the Wanderer|r underwater. Loot it for |cRXP_LOOT_The Second Troll Legend|r
    .complete 207,2
step
    #completewith next
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r, |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 195 >> Turn in Raptor Mastery
    .accept 196 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .turnin 188 >> Turn in Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 192 >> Turn in Panther Mastery
    .accept 193 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Hemet Nesingwary
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #completewith next
    +Travel to the Rebel Camp
step
    .goto Stranglethorn Vale,37.832,3.559
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >> Turn in Kurzen's Mystery
    .target Brother Nimetz
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .turnin 329 >> Turn in The Spy Revealed!
    .accept 330 >> Accept Patrol Schedules
    .target Lieutenant Doren
step
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >> Turn in Special Forces
    .accept 202 >> Accept Colonel Kurzen
    .target Lieutenant Doren
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,37.66,3.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 330 >> Turn in Patrol Schedules
    .accept 331 >> Accept Report to Doren
    .target Corporal Sethman
step
    .isQuestTurnedIn 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 331 >> Turn in Report to Doren
    .target Lieutenant Doren
step
    .goto Stranglethorn Vale,27.27,49.48,70,0
    .goto Stranglethorn Vale,28.13,47.27,70,0
    .goto Stranglethorn Vale,28.66,43.72,70,0
    .goto Stranglethorn Vale,31.22,43.40,70,0
    .goto Stranglethorn Vale,31.85,40.88
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r
    .complete 196,1 
    .mob Jungle Stalker
step
    .goto Stranglethorn Vale,47.2,28.0,35,0
    .goto Stranglethorn Vale,49.8,24.6,35,0
    .goto Stranglethorn Vale,48.4,19.2,35,0
    .goto Stranglethorn Vale,49.54,24.17
    .goto Stranglethorn Vale,47.2,28.0,0
    .goto Stranglethorn Vale,49.8,24.6,0
    .goto Stranglethorn Vale,48.4,19.2,0
    >>Kill |cRXP_ENEMY_Bhag'thera|r. Loot him for the |cRXP_LOOT_Fang of Bhag'thera|r
    >>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_can spawn north or west of the Mosh'Ogg Ogre Mound|r
    .complete 193,1 
    .unitscan Bhag'thera
step
    #completewith next
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
    .isOnQuest 202
    >>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r
    >>Kill |cRXP_ENEMY_Colonel Kurzen|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_If you can't kill |cRXP_ENEMY_Colonel Kurzen|r skip this step|r
    .complete 202,1 
    .complete 202,2 
    .complete 202,3 
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .mob Colonel Kurzen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 193 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .turnin 196 >> Turn in Raptor Mastery
    .accept 197 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .target Sir S. J. Erlgadin
    .target Hemet Nesingwary
step
    .goto Stranglethorn Vale,38.042,3.012
    .target Lieutenant Doren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 202 >> Turn in Colonel Kurzen
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
step
    .hs >> Hearth to Duskwood
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Booty Bay >> Fly to Booty Bay
    .target Felicia Maline
step
    #label BBTurnins
    .goto Stranglethorn Vale,27.227,76.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 601 >> Turn in Water Elementals
    .accept 602 >> Accept Magical Analysis
    .target Baron Revilgaz
step
    .goto Stranglethorn Vale,27.000,77.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r up stairs on the top floor
    .turnin -189 >> Turn in Bloodscalp Ears
    .target Kebok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dudd Fizzlescroll|r
    .turnin -95384 >> Turn in Partial Mystical Notes
    .goto Stranglethorn Vale,28.2,76.2
    .target Dudd Fizzlescroll
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
    .turnin 97048 >> Turn in Returning to Port
    .goto Stranglethorn Vale,27.681,76.648
    .target Captain Aransas
step
    .goto Stranglethorn Vale,26.4,73.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 97331 >> Turn in Bloodscalp Ears
    .target Wharfmaster Lozgil
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .goto Stranglethorn Vale,27.530,77.787
    .fly Ironforge >> Fly to Ironforge
    .target Gyll
step
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
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
#subgroup Duo 30-40
--#groupid RXP-SRGCE-A1
#name 39-40 Dustwallow Marsh
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
    .goto Dustwallow Marsh,66.437,51.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helenia Olden|r
    >>|cRXP_BUY_Buy 3|r |T134059:0|t[Soothing Spices] |cRXP_BUY_from her|r
    .collect 3713,3,1218,1 
    .target Helenia Olden
step
    .goto Dustwallow Marsh,59.72,41.17 >> Travel to the Sentry Point Tower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r
    >>|cRXP_WARN_Stay in |cRXP_FRIENDLY_Archmage Tervosh's|r Line of Sight as he will buff you with|r |T135880:0|t[Proudmoore's Defense] |cRXP_WARN_which gives 10 Stamina and 40 Armor|r
    .complete 1265,1 
    .goto Dustwallow Marsh,59.652,41.243
    .turnin 1265 >> Turn in The Missing Diplomat
    .accept 1266 >> Accept The Missing Diplomat
    .goto Dustwallow Marsh,59.652,41.243
    .target Archmage Tervosh
step
    .goto Dustwallow Marsh,55.437,26.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 1218 >> Accept Soothing Spices
    .turnin 1218 >> Turn in Soothing Spices
    .target "Swamp Eye" Jarl
step
    #label OrcReport
    .goto Dustwallow Marsh,55.442,25.917
    >>Click the |cRXP_PICK_Loost Dirt|r
    .accept 1219 >> Accept The Orc Report
step
    .goto Dustwallow Marsh,45.24,24.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Hendel|r
    .turnin 1266 >> Turn in The Missing Diplomat
    .accept 1324,1 >> Accept The Missing Diplomat
    .target Private Hendel
    .isQuestTurnedIn 1264
step
    .goto Dustwallow Marsh,45.24,24.65
    >>Defeat |cRXP_ENEMY_Private Hendel|r. He will attack you along with 2 |cRXP_ENEMY_Theramore Sentries|r
    >>They will both reset once you subdue |cRXP_ENEMY_Private Hendel|r
    .complete 1324,1 
    .isOnQuest 1324
    .mob Private Hendel
step
    .goto Dustwallow Marsh,45.193,24.292
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Tervosh|r |cRXP_WARN_first and then to|r |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 1324 >> Turn in The Missing Diplomat
    .accept 1267 >> Accept The Missing Diplomat
    .turnin 1267 >> Turn in The Missing Diplomat
    .target Archmage Tervosh
    .target Lady Jaina Proudmoore
step
    #sticky
    .abandon 1324 >> Abandon The Missing Diplomat quest if you still have it in your quest log
step
    .goto Dustwallow Marsh,35.154,38.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .accept 1177 >> Accept Hungry!
    .target Mudcrush Durtfeet
step
    >>Click the |cRXP_PICK_Hoofprints|r on the ground
    >>Click the |cRXP_PICK_Theramore Guard Badge|r on the wooden plank
    >>Click the |cRXP_PICK_Black Shield|r hanging on the fireplace
    .accept 1284 >> Accept Suspicious Hoofprints
    .goto Dustwallow Marsh,29.705,47.645
    .accept 1252 >> Accept Lieutenant Paval Reethe
    .goto Dustwallow Marsh,29.832,48.243
    .accept 1253 >> Accept The Black Shield
    .goto Dustwallow Marsh,29.631,48.606
step
    .goto Dustwallow Marsh,46.021,57.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 2846 >> Accept Tiara of the Deep
    .target Tabetha
step
    >>Kill the |cRXP_ENEMY_Mirefins|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 1177,1 
    .mob Mirefin Coastrunner
    .mob Mirefin Muckdweller
    .mob Mirefin Murloc
    .mob Mirefin Puddlejumper
    .mob Mirefin Murloc
    .mob Mirefin Warrior
    .mob Mirefin Oracle
step
    .goto Dustwallow Marsh,55.437,26.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 1206 >> Accept Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    .isOnQuest 1206
    .goto Dustwallow Marsh,35.43,21.98,70,0
    .goto Dustwallow Marsh,33.58,21.32,70,0
    .goto Dustwallow Marsh,35.05,24.71,70,0
    .goto Dustwallow Marsh,34.49,22.06
    >>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Silkspinners|r, |cRXP_ENEMY_Darkmist Lurkers|r and |cRXP_ENEMY_Darkmist Recluses|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 1206,1 
    .mob Darkmist Recluse
    .mob Darkmist Spider
    .mob Darkmist Silkspinner
    .mob Darkmist Lurker
step
    .maxlevel 41
    .goto Dustwallow Marsh,46.881,17.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    >>|cRXP_WARN_This will start an escort quest|r
    .accept 1222 >> Accept Stinky's Escape
    .target "Stinky" Ignatz
step
    .isOnQuest 1222
    .goto Dustwallow Marsh,48.76,24.49,0
    >>Follow |cRXP_FRIENDLY_"Stinky" Ignatz|r through the Marshlands
    .complete 1222,1 
    .target "Stinky" Ignatz
step
    .isQuestComplete 1177
    .goto Dustwallow Marsh,35.154,38.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .turnin 1177 >> Turn in Hungry
    .target Mudcrush Durtfeet
step
    .goto Dustwallow Marsh,55.437,26.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1206 >> Turn in Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    .goto Dustwallow Marsh,66.336,45.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1222 >> Turn in Stinky's Escape
    .target Morgan Stern
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Theramore Lieutenant|r
    .goto Dustwallow Marsh,68.125,48.201
    .turnin 1219 >> Turn in The Orc Report
    .accept 1220 >> Accept Captain Vimes
    .target Theramore Lieutenant
step
    #completewith next
    .goto Dustwallow Marsh,68.23,48.82,25 >> Travel upstairs in the Keep
step
    #label DWallow
    .goto Dustwallow Marsh,68.212,48.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1252 >> Turn in Lieutenant Paval Reethe
    .accept 1259 >> Accept Lieutenant Paval Reethe
    .turnin 1253 >> Turn in The Black Shield
    .accept 1319 >> Accept The Black Shield
    .turnin 1284 >> Turn in Suspicious Hoofprints
    .turnin 1220 >> Turn in Captain Vimes
    .target Captain Garran Vimes
step
    .goto Dustwallow Marsh,68.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adjutant Tesoran|r
    .turnin 1259 >> Turn in Lieutenant Paval Reethe
    .accept 1285 >> Accept Daelin's Men
    .target Adjutant Tesoran
step
    .goto Dustwallow Marsh,64.756,50.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caz Twosprocket|r
    .turnin 1319 >> Turn in The Black Shield
    .accept 1320 >> Accept The Black Shield
    .target Caz Twosprocket
step
    .goto Dustwallow Marsh,68.212,48.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1285 >> Turn in Daelin's Men
    .accept 1286 >> Accept The Deserters
    .turnin 1320 >> Turn in The Black Shield
    .target Captain Garran Vimes
step
    #completewith next
    .goto Dustwallow Marsh,35.57,53.67,40,0
    .goto Dustwallow Marsh,35.75,53.95,20,0
    .goto Dustwallow Marsh,36.09,54.31,10 >>Travel toward |cRXP_ENEMY_Balos|r
step
    .goto Dustwallow Marsh,36.09,54.31
    >>Defeat |cRXP_ENEMY_Balos|r
    >>Talk to |cRXP_FRIENDLY_Balos|r after defeating him
    .turnin 1286 >> Turn in The Deserters
    .accept 1287 >> Accept The Deserters
    .target Balos Jacken
step
    .goto Dustwallow Marsh,68.212,48.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 1287 >> Turn in The Deserters
    .target Captain Garran Vimes
step
    >>Need to ding level 40 here, hopefully there's some ok new quests
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
step << Paladin
    .goto Stormwind City,50.6,47.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1661 >>Accept The Tome of Nobility
    .turnin 1661 >>Turnin The Tome of Nobility
    .target Duthorian Rall
step << Paladin
    .goto Stormwind City,49.4,49.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step
    >> This quest is NOT sharable
    .goto 1453,50.35,45.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .accept 3636 >> Accept Bring the Light
    .target Archbishop Benedictus
]])