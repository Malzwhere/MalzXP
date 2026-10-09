local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

----Start of <1.5x Westfall----
----Night Elves and Hunters stay in Darkshore and Grind----

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 20-21 Redridge/Duskwood
#next 21-22 Deadmines
#defaultfor Dwarf/Gnome

step << Shaman
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step << Shaman
    #sticky
    #completewith redridgeEnd
    >>|cRXP_WARN_you have ghost wolf now (:
step << Shaman
    .goto 1432,41.827,19.001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norric Lochthane|r
    .target Norric Lochthane
    .turnin 94494 >> Turn in Call of Water
    .accept 94495 >> Accept Call of Water
step << Shaman
    .goto 1432,43.814,10.502,10,0
    .goto 1432,44.216,9.889,10,0
    .goto 1432,45.007,10.898,10,0
    .goto 1437,70.076,91.254,10,0
    .goto 1437,67.814,84.141,10,0
    .goto 1437,66.189,77.045,10,0
    .goto 1437,65.629,76.146,10,0
    .goto 1437,65.747,76.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hervdana Saegrund|r under the waterfall
    .target Hervdana Saegrund
    .turnin 94495 >> Turn in Call of Water
    .accept 94497 >> Accept Call of Water
step << Shaman
    .goto 1437,64.951,74.706
    .complete 94497,1
    .use 265732
step << Shaman
    .goto 1437,65.747,76.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hervdana Saegrund|r under the waterfall
    .target Hervdana Saegrund
    .turnin 94497 >> Turn in Call of Water
    .accept 94499 >> Accept Call of Water
step << Shaman
    .hs >> Hearth to Ironforge
step << Shaman
    #completewith next
    .goto 1455/0,-1249.95,-4793.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r
    .target Gearcutter Cogspinner
step << Shaman
    >> Check the shortest path addon, possibly faster to just fly to redridge
    .goto 1455/0,-1330.28,-4840.430
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
step << Shaman
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge
    .target Dungar Longdrink
step << !Shaman
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Accept Philmor's Favor
step << !Shaman
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << !NightElf
    .goto 1453/0,600.22,-8426.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard
    .isOnQuest 1338
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    .goto 1453,80.27,68.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Tony Romano|r
    .trainer >> Train your class spells
    .target Lord Tony Romano
step << Rogue
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
    .target Master Mathias Shaw
step
    #completewith BMenace
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
    .target Billibub Cogspinner
step << Mage/Rogue/Warlock/Druid/Warrior/Paladin
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Train 1h Swords << Mage/Rogue/Warlock
    .train 1180 >> Train Daggers << Mage/Druid
    .train 202 >> Train 2h Swords << Warrior/Paladin
    .target Woo Ping
step << !Shaman
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Turn in Philmor's Favor
    .accept 97222 >>Accept Gatehouse Goods
step << !Shaman
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Use the|r |T132762:0|t[Gatehouse Shipment] |cRXP_WARN_in front of the |cRXP_PICK_Gatehouse Door|r upstairs|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step << !Shaman
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Turn in Gatehouse Goods
step
    #completewith orcs
    .goto 1453/0,490.12,-8835.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
step
    .goto 1433/0,-2237.93,-9443.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
    .accept 98407 >>Accept Show of Force
    .target Deputy Feldon
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Accept Blackrock Menace
    .accept 98387 >>Accept Blackrock Blockade
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
step
    .goto 1433/0,-2208.600,-9243.500
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 95999 >>Accept WANTED: Incinerator Gar'im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2221.65,-9218.60
    .turnin 121 >> Turn in Messenger to Stormwind
step
    .goto 1433/0,-2152.62,-9217.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .accept 129 >> Accept A Free Lunch
step
    >>|cRXP_WARN_Jump into the Lake|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    >>|cRXP_WARN_It has multiple spawn locations in the Lake|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Accept Encroaching Gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.28,-9443.750
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
step
    #loop
    .goto 1433/0,-1913.800,-9490.601,50,0
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90,45,0
	>>Kill |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Poachers|r
    >>Kill |cRXP_ENEMY_Redridge Thrashers|r. Loot them for their |cRXP_LOOT_Spiked Collars|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step << Shaman
    .goto 1433,71.455,60.114,5 >> Travel south around to the waterfall
    .complete 94499,1
step
    .isOnQuest 95999
    #sticky
    #label IncineratorGarim
    .waypoint 1433/0,-3261.400,-9824.700
    >>Kill |cRXP_ENEMY_Incinerator Gar'im|r inside the cave. Loot him for the |cRXP_LOOT_Broken Staff of Incinerator Gar'im|r
    >>|cRXP_WARN_Skip this step if you are unable to find a group for him|r
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #completewith next
    >>Loot the |cRXP_PICK_Grain Sacks|r and |cRXP_PICK_Meat Haunches|r on the ground for |cRXP_LOOT_Stolen Supplies|r
    >>Loot the |cRXP_PICK_Weapon Racks|r and |cRXP_PICK_Stolen Weapons|r the ground
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label orcs
    #loop
    >>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast |T132149:0|t[Net] on you|r
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #loop
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    >>Loot the |cRXP_PICK_Grain Sacks|r and |cRXP_PICK_Meat Haunches|r on the ground for |cRXP_LOOT_Stolen Supplies|r
    >>Loot the |cRXP_PICK_Weapon Racks|r and |cRXP_PICK_Stolen Weapons|r the ground
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #requires IncineratorGarim
step
    .goto 1433/0,-2903.07,-9691.340
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #completewith next
    .goto 1433/0,-2298.06,-9284.04,150 >> Travel to Lakeshire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Turn in Blackrock Menace
    .turnin 98387 >>Turn in Blackrock Blockade
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
	.target Foreman Oslow
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Turn in The Lost Tools
step
    #optional
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Turn in WANTED: Incinerator Gar'im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
    .itemcount 150,8
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.16,-9245.67
    .accept 34 >> Accept An Unwelcome Guest
step
    .goto 1433/0,-1911.22,-9288.820
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Bellygrub|r back to Lakeshire so the |cRXP_FRIENDLY_Guards|r assist you in killing|r |cRXP_ENEMY_Bellygrub|r
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back later|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step
    #sticky
    #completewith redridgeEnd
    >> Start looking for a group for Deadmines, ideally willing to chain into RoL
step
    .goto 1433/0,-2045.16,-9245.67
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Turn in Delivering Daffodils
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Turn in Hilary's Necklace
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Turn in Assessing the Threat
    .turnin 98407 >>Turn in Show of Force
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Turn in Hilary's Necklace
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
    .itemcount 150,8
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Turn in Delivering Daffodils
step
    #label redridgeEnd
    .goto 1433/0,-2234.89,-9435.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather

]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 21-22 Deadmines
#next 22-23 Ruins of Lordaeron
#defaultfor Dwarf/Gnome


step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
    .vendor >>|cRXP_BUY_Buy food/water if needed|r
	.target Innkeeper Heather
step
    .goto 1436,41.978,71.325,100 >> Travel to Deadmines
step 
    #optional
    #completewith DMzoneIn
    .goto 1436/0,1966.32,-11407.13,40 >> If time to burn, go to Lighthouse quests
step
    #completewith DMzoneIn
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .accept 103 >> Accept Keeper of the Flame
    .turnin 103 >> Turn in Keeper of the Flame
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    #completewith DMzoneIn
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
step
    #completewith DMzoneIn
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you can't find him, skip this step|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .mob Old Murk-Eye
step
    #completewith DMzoneIn
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >> Turn in The Coastal Menace
    .target Captain Grayson
    .isQuestComplete 104
step
    #label DMzoneIn
    .goto 1415,41.197,79.112,10 >> Enter the cave
step
    #completewith EnterDM
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_You may complete this after you enter the Dungeon|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon, skip if contested|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #optional
    #completewith EnterDM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon, skip if contested|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    #optional
    #completewith EnterDM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon, skip if contested|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Enter The Deadmines Dungeon
step
    #completewith DMend
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    >>Kill |cRXP_ENEMY_Sneed|r. Loot him for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r and |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]
    >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] to start the quest|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Accept The Unsent Letter
    .use 2874 -- An Unsent Letter
step 
    .isQuestAvailable 104
    .goto 1436/0,1966.32,-11407.13,40 >> Go do Lighthouse now
step
    .isQuestAvailable 104
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .accept 103 >> Accept Keeper of the Flame
    .turnin 103 >> Turn in Keeper of the Flame
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .isQuestAvailable 104
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
step
    .isOnQuest 104
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you can't find him, skip this step|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .mob Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >> Turn in The Coastal Menace
    .target Captain Grayson
    .isQuestComplete 104
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    >>|cRXP_WARN_You MUST do this quest your|r |T132290:0|t[Poisons]
    .turnin 2360 >> Turn in Mathias and the Defias
    .accept 2359 >> Accept Klaven's Tower
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Defias Tower Key|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r spawns at the entrance to the tower, then patrols around the outside of it|r
    >>|cRXP_WARN_Be careful as he deals a LOT of damage. If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, quickly use|r |T132307:0|t[Sprint] |cRXP_WARN_and run away|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equip the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Travel up to 2nd top floor of the tower. Whilst in|r |T132320:0|t[Stealth] |cRXP_WARN_and the |cRXP_ENEMY_Defias Tower Sentries|r aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location|r
    >>|cRXP_WARN_Manually|r |T132320:0|t[Unstealth]|cRXP_WARN_, then press your "Interact with Target" keybind to open the |cRXP_PICK_Duskwood Chest|r. Loot it for|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_NOTE: Your|r |T132320:0|t[Stealth] |cRXP_WARN_will temporarily stop working after looting|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_Be prepared to run if you don't kill the |cRXP_ENEMY_Defias Tower Sentries|r on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot|r
    >>|cRXP_WARN_If you have a|r |T135641:0|t[Dagger] |cRXP_WARN_in your bags or equipped, you can cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Defias Tower Patrollers|r and |cRXP_ENEMY_Defias Tower Sentries|r inside to kill them instantly. Be prepared to run after you kill the first |cRXP_ENEMY_Defias Tower Sentry|r and remember you can be hit from above. This is slower, but a LOT safer|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Malformed Defias Drone|r and |cRXP_ENEMY_Defias Drones|r can be at the entrance of the tower if you have to run out of it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Click HERE for a video guide
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step
    #label DMend
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >> Travel to Sentinel Hill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 166 >> Turn in The Defias Brotherhood
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin -214 >> Turn in Red Silk Bandanas
    .target +Scout Riell
    .goto 1436/0,1033.22,-10504.83
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    .goto 1453,80.27,68.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Tony Romano|r
    .trainer >> Train your class spells
    .target Lord Tony Romano
step << Rogue
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
    .target Master Mathias Shaw
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
step
    .goto 1453/0,734.66,-8555.94,10,0
    .goto 1453/0,719.68,-8550.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Turn in The Unsent Letter
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r and |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Accept Devourer of Souls
    .trainer >> Train your class spells
    .target +Ursula Deline
    .target +Gakin the Darkbinder
step << !Shaman
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 22-23 Ruins of Lordaeron
#next 23-25 Ashenvale
#defaultfor Dwarf/Gnome

step 
    #optional
    #completewith next
    .goto 1453,41.882,49.433,20 >> Go to Stormwind Harbor
step 
    .goto 1453,22.559,56.108
    .zone 1439 >> Take the boat to Darkshore
step 
    .goto 1439,32.405,43.800
    .zone 1437 >> Take the boat to Menethil Harbor
step 
    .goto 1437,4.640,57.122
    .zone 1424 >> Take the boat to Southshore
step
    #optional
    .goto 1424,51.0,59.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neema|r
    .vendor >>|cRXP_BUY_Buy food/water if needed|r
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Get the Southshore flight path
    .target Darla Harris
step
    .goto 1424,33.779,49.496,150,0
    .goto 1416,24.218,85.672,50,0
    .goto 1416,21.645,52.182,50,0
    .goto 1421,78.185,28.231,50,0
    .goto 1416,27.499,4.010,50,0
    .goto 1420,67.523,71.764,50 >> Travel to Undercity
step
    .goto 1420,67.523,71.764,10,0
    .goto 1420,68.461,71.031,10,0
    .goto 1420,68.264,68.969,10 >> Do not fall into the courtyard, just walk around front
step
    .goto 1458,72.532,11.484,5 >>|cRXP_WARN_Zone into the Ruins of Lordaeron|r
step
    >> do the dungeon things
    .accept 95250 >> Accept Abominable Creatures from the entrance
    .complete 95250,1
    .accept 95195 >> Accept Bloodied Insignia from trash drop
    .complete 95195,1
    .accept 95189 >> Accept Crest of Lordaeron, random spawn on a wall somewhere
    .accept 92415 >> Accept Remember That I Love You, from letter on the ground
    .turnin 95250 >> Turn in Abominable Creatures at the entrance
step
    .hs >> Hearth to Stormwind
step
    .goto 1453,69.081,82.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .target General Marcus Jonathan
    .turnin 95195 >> Turn in Bloodied Insignia
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    .goto 1453,80.27,68.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Tony Romano|r
    .trainer >> Train your class spells
    .target Lord Tony Romano
step
    .goto 1453,56.353,54.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .target Orphan Matron Nightingale
    .turnin 92415 >> Turn in Remember That I Love You
    .accept 95161 >> Accept Remember That I Love You
step << !Dwarf Rogue
    #optional
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Travel toward |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .skill firstaid,80 >> |cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .train 7934 >> |cRXP_WARN_Train|r |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step
    .goto 1453,73.002,46.782,50,0
    .goto 1453,68.098,29.074
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Dana Kennedy|r
    .target Lady Dana Kennedy
    .turnin 95189 >> Turn in Crest of Lordaeron inside the castle
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 167 >> Turn in Oh Brother. . .
    .turnin 168 >> Turn in Collecting Memories
    .target +Wilder Thistlenettle
    .goto 1453/0,501.31,-8468.65
    .isQuestComplete 167
    .isQuestComplete 168
step
    >>|cRXP_WARN_Shaman should be soulstoned for water totem quest ahead :)|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Turn in Underground Assault
    .accept 2928 >> Accept Gyrodrillmatic Excavationators
    .target +Shoni the Shilent
    .goto 1453/0,634.700,-8390.800
step
    #completewith next
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if it's up)|r
    .target Billibub Cogspinner
step << Paladin
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << !Shaman
    #optional
    #completewith next
    .goto 1453,41.882,49.433,20 >> Go to Stormwind Harbor
step << !Shaman
    .goto 1453,22.559,56.108
    .zone 1439 >> Take the boat to Darkshore
step << Shaman
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Enter the Deeprun Tram
step << Shaman
    >> |cRXP_WARN_CRAFT ON TRAM
    .zone Ironforge >> Take the Deeprun Tram to Ironforge
step << Shaman
    #completewith next
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if it's up)|Ruins
    .target Gearcutter Cogspinner
    .subzoneskip 2257
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
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 23-25 Ashenvale
#next 25-26 Wetlands
#defaultfor Dwarf/Gnome


step << Shaman
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step << Shaman
    .goto 1432,43.814,10.502,10,0
    .goto 1432,44.216,9.889,10,0
    .goto 1432,45.007,10.898,10,0
    .goto 1437,70.076,91.254,10,0
    .goto 1437,67.814,84.141,10,0
    .goto 1437,66.189,77.045,10,0
    .goto 1437,65.629,76.146,10,0
    .goto 1437,65.747,76.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hervdana Saegrund|r under the waterfall
    .target Hervdana Saegrund
    .turnin 94499 >> Turn in Call of Water
    .accept 94500 >> Accept Call of Water
step << Shaman
    #sticky
    #completewith shamanDarkshore
    >> You can also get summoned to Darkshore at this point if available
step << Shaman
    #completewith next
    >> Travel to Menethil Harbor
    .goto 1437,10.958,54.514,30
    .zoneskip Darkshore
step << Shaman
    .goto 1437,11.769,57.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .target Sida
    .accept 470 >> Accept Digging Through the Ooze
    .zoneskip Darkshore
step << Shaman
    .goto 1437,10.926,59.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .target First Mate Fitzsimmons
    .accept 463 >> Accept The Greenwarden
    .zoneskip Darkshore
step << Shaman
    .goto 1437,8.406,58.560
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .target Karl Boran
    .accept 279 >> Accept Claws from the Deep
    .zoneskip Darkshore
step << Shaman
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
step << Shaman
    #label shamanDarkshore
    >>|cRXP_WARN_This is a 3 stop boat, stay on through the Southshore stop|r
    .goto 1437,4.640,57.122
    .zone 1439 >> Take the boat to Darkshore
step
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Turn in The Corruption Abroad
    .accept 1275 >> Accept Researching the Corruption
    .target Gershala Nightwhisper
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Astranaar >> Fly to Astranaar
    .target Caylais Moonfeather
step << Shaman
    .goto 1439,34.7,47.3 >> Enter the water around Astranaar and fill the waterskin
    .complete 94500,1
    .use 265772
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .accept 1008 >> Accept The Zoram Strand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto 1440/1,-311.99,2759.11
    .accept 1070 >> Accept On Guard in Stonetalon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto 1440/1,-362.16,2785.640
    .accept 1056 >> Accept Journey to Stonetalon Peak
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto 1440/1,-411.18,2767.19
    .accept 991 >> Accept Raene's Cleansing
step
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-410.60,2758.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Buy food and water if necessary|r
    .target Maliynn
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    >>May need to wait for long RP
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 24,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
-- step
--     #label Azshara
--     .goto Azshara,11.90,77.57
--     .goto 1440/1,-2331.800,1927.400,0
--     .goto 1440/1,-2395.500,2032.800,0
--     >>|cRXP_WARN_Be careful about|r |cRXP_ENEMY_Horde Guards|r |cRXP_WARN_as you're making your way to Azshara. Theres two camps of guards (marked on your map) near the road next to Splintertree outpost that you can bodypull if not careful|r
--     >>You may encounter a |cRXP_ENEMY_Warsong Outrider|r patrolling the road north-east of Splintertree Post. |cRXP_WARN_You don't have to run around it as it's passive and will not attack you if you don't attack it first|r
--     .unitscan Splintertree Guard
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
--     .fp Azshara>> Get the Azshara flight path
--     .target Jarrodenus
step
    #label TravelRatchet
    -- .goto 1440,91.849,47.294,50,0
    -- .goto 1440,92.595,58.920,50,0
    -- .goto 1414,56.670,45.233,50,0
    -- .goto 1411,35.444,2.784,50,0
    -- .goto 1413,61.689,17.990,50,0
    -- .goto 1413,64.422,33.891,50,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Travel to Ratchet, waypoints are broken since skipping Azshara but we can figure it out
    -- .subzone 392 >> Travel to Ratchet in The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet Flight Path
    .target Bragok
step << Warlock
    .goto The Barrens,49.307,57.096
    >>Talk to |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >> Turn in Devourer of Souls
    .target Takar the Seer
    .accept 1738 >> Accept Heartswood
    .accept 65602 >> Accept What is Love?
step
    .goto The Barrens,46.373,73.802
    >>Interact with the nailed plank
    .turnin 79008 >> Turn in ... and that note you found
    .accept 79192 >> Accept Stepping Stones
step
    #completewith next
    .goto Thousand Needles,8.456,17.953,0
    .goto Feralas,89.50,45.85,50 >> Travel to Thalanaar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
    .goto Feralas,89.497,45.853
    .fp Thalanaar >> Get the Thalanaar flight path
    .target Thyssiana
step
    #completewith next
    .hs >> Hearth to Astranaar
step
    #completewith ElunesTear
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    .goto 1440/1,-974.00,2890.19
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground
    .complete 1033,1
step
    #label ElunesTear
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    >>May need to wait for long RP
	.target Pelturas Whitemoon
    .turnin 1033 >> Turn in Elune's Tear
    .timer 17,Elune's Tear RP
    .accept 1034 >> Accept The Ruins of Stardust
step
    #sticky
    #completewith StatuetteStart
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith StatuetteStart
    >>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label StatuetteStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .accept 1007 >> Accept The Ancient Statuette
step
    #completewith nagas
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Don't go out of your way to complete this yet|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto 1440/1,881.13,3879.57
    >>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >> Accept Ruuzel
step
    #label nagas
    .goto 1440/1,1323.55,4159.35
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    .goto 1440/1,1296.33,4088.67,0
    .goto 1440/1,866.14,4013.71,0
    .goto 1440/1,843.07,3863.42,0
    .goto 1440/1,942.84,3710.83,0
    .goto 1440/1,1072.01,3518.64,0
    .goto 1440/1,1296.33,4088.67,70,0
    .goto 1440/1,866.14,4013.71,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,1072.01,3518.64,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,866.14,4013.71,70,0
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    >> Malz needs 1 campfire for warlock quest here
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1009 >> Turn in Ruuzel
step << Warlock
    .goto Ashenvale,26.78,22.42
    >>Loot the |cRXP_LOOT_Unlit Torch|r on the table
    .collect 190307,1,65602,1 
step << Warlock
    .goto Ashenvale,26.78,22.42
    >>|cRXP_WARN_Create a campfire, then use the Unlit Torch on top of it|r
    .collect 190308,1,65602,1 
    .use 190307
    .usespell 818
step << Warlock
    .goto Ashenvale,26.61,22.01
    >>Use the Burning Torch on the cart outside next to where you looted the torch, then go upstairs and loot the statue
    .complete 65602,1 
step << Warlock
    #completewith next
    .goto Ashenvale,26.73,44.95,100,0
    .goto Ashenvale,31.50,31.50,40 >> Travel to The Ruins of Ordil'Aran
step << Warlock
    .goto Ashenvale,31.50,31.50
    >>Loot the |cRXP_LOOT_Heartswood|r giant tree
    .complete 1738,1
step
    #sticky
    #completewith SoulGemStart
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone. You will need them for a quest later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith SoulGemStart
    >>Kill and loot |cRXP_WARN_Ghostpaw Runners|r you encounter while questing. Keep any |T133970:0|t[|cRXP_LOOT_Lean Wolf Flanks|r] you get. You will need 10 for a cooking quest later
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label SoulGemStart
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
	.target Teronis' Corpse
    .goto 1440/1,528.79,3045.86
    .turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
step
    #sticky
    #completewith GlowingGem
    >>Keep any |T134304:0|t[Murloc Fins] you might loot. You will need 8 for a quest later
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    .goto 1440/1,523.02,2988.59,50,0
    .goto 1440/1,579.54,3055.08,50,0
    .goto 1440/1,488.42,3073.53,50,0
    .goto 1440/1,528.79,3045.86
    >>Kill |cRXP_ENEMY_Saltspittle Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Oracles|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .turnin 1008 >> Turn in The Zoram Strand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto 1440/1,-411.18,2767.19
    .turnin 1023 >> Turn in Raene's Cleansing
step
    .goto 1440/1,-220.3,2067.24
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #label Stonetalon
    .goto Ashenvale,42.50,71.70
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .target Ziz Fizziks
    .goto Stonetalon Mountains,58.989,62.601
    .accept 1093 >> Accept Super Reaper 6000
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .target Kaela Shadowspear
    .goto Stonetalon Mountains,59.899,66.844
    .turnin 1070 >> Turn in On Guard in Stonetalon
    .accept 1085 >> Accept On Guard in Stonetalon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .target Gaxim Rustfizzle
    .goto Stonetalon Mountains,59.516,67.146
    .turnin 1085 >> Turn in On Guard in Stonetalon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .target Gaxim Rustfizzle
    .goto Stonetalon Mountains,59.516,67.146
    .accept 1071 >> Accept A Gnome's Respite
step
    #sticky
    #label sr6000
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
    >>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for the |cRXP_LOOT_Blueprints|r
    .complete 1093,1
    .unitscan Venture Co. Operator
    .isOnQuest 1093
step
    #label wyv1
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
    >>Kill |cRXP_ENEMY_Venture Co. Deforesters|r and |cRXP_ENEMY_Venture Co. Loggers|r
    .mob Venture Co. Deforester
    .mob Venture Co. Logger
    .complete 1071,1
    .complete 1071,2
    .isOnQuest 1071
step
    #label sturnin
    #requires sr6000
    .goto Stonetalon Mountains,58.989,62.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .target Ziz Fizziks
    .turnin 1093 >> Turn in Super Reaper 6000
    .isQuestComplete 1093
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .goto Stonetalon Mountains,59.516,67.146
    .turnin 1071 >> Turn in A Gnome's Respite
    .target Gaxim Rustfizzle
    .isQuestComplete 1071
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .target Gaxim Rustfizzle
    .accept 1072 >> Accept An Old Colleague
    .accept 1075 >> Accept A Scroll from Mauren
    .isQuestTurnedIn 1071
step
    .goto Stonetalon Mountains,51.026,52.327,20,0
    .goto Stonetalon Mountains,40.634,52.425
    >>Interact with the Pocket Litter
    .turnin 79192 >> Turn in Stepping Stones
    .accept 79980 >> Accept Scramble
step
    .goto Stonetalon Mountains,39.649,49.819
    >>Interact with the Mound of Dirt
    .turnin 79980 >> Turn in Scramble
    .accept 79974 >> Accept Scramble
step
    .goto Stonetalon Mountains,37.639,44.169,50,0
    .goto Stonetalon Mountains,43.998,43.046,100 >> Head to the Mirkfallon Lake
step
    .goto Stonetalon Mountains,48.712,39.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Night Elf Courier|r
    .target Night Elf Courier
    .accept 86574 >> Accept Stonetalon Supply Run
step
    .goto Stonetalon Mountains,54.04,40.09,60,0
    .goto Stonetalon Mountains,53.26,36.83,40,0
    .goto Stonetalon Mountains,54.56,38.12
    >>Kill |cRXP_ENEMY_Pridewing Wyverns|r and |cRXP_ENEMY_Pridewing Consorts|r. Loot them for their |cRXP_LOOT_Stonetalon Supply Bundle|r
    .mob Pridewing Wyvern
    .mob Pridewing Consort
    .complete 86574,1
step
    #completewith next
    .goto Stonetalon Mountains,37.103,8.100,100 >> Travel to Stonetalon Peak
step
    .goto Stonetalon Mountains,37.103,8.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .target Keeper Albagorm
    .turnin 1056 >> Turn in Journey to Stonetalon Peak
step << Shaman
    .goto Stonetalon Mountains,35.767,5.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Faralia|r
    .target Innkeeper Faralia
    .turnin 86574 >> Turn in Stonetalon Supply Run
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
    .target Teloren
    .goto Stonetalon Mountains,36.438,7.181
    .fp Stonetalon >> Get the Stonetalon Flight Path
    .fly Ashenvale >> Fly to Ashenvale
step
    .goto 1440/1,-284.31,2828.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore >> Fly to Darkshore
    .target Daelyshia
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1034 >> Turn in The Ruins of Stardust
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .accept 98461 >> Accept Unrequited Love
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    #completewith next
    .vendor >> Restock/Resupply
step
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Get the Teldrassil Flight Path
    .target Vesprystus
step
    #optional
    #completewith next
    .goto 1438/1,968.90,8795.34
    .zone Darnassus >> Take the purple portal into Darnassus
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r and |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r upstairs
    .accept 1199 >> Accept Twilight Falls
    .goto Darnassus,55.239,23.996 << Shaman 
    .accept 1198 >> Accept In Search of Thaelrid
    .goto Darnassus,55.360,25.024 << Shaman
    .target Argent Guard Manados
    .target Dawnwatcher Shaedlass
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
    .isOnQuest 741
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .accept 942 >> Accept The Absent Minded Prospector
    .isQuestTurnedIn 741
step
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Take the purple portal back to Rut'theran Village
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
step 
    .goto 1439,32.405,43.800
    .zone 1437 >> Take the boat to Menethil Harbor
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 25-26 Wetlands
#next 26-27 Duskwood
#defaultfor Dwarf/Gnome

step
    .goto 1437,8.406,58.560
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .target Karl Boran
    .accept 279 >> Accept Claws from the Deep
step
    .goto 1437,11.769,57.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .target Sida
    .accept 470 >> Accept Digging Through the Ooze
step
    .goto Wetlands,11.503,52.134
    .target Tarrel Rockweaver
    >>Talk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 98461 >> Turn in Unrequited Love
    .accept 305 >> Accept In Search of The Excavation Team
step
    .goto 1437,10.926,59.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .target First Mate Fitzsimmons
    .accept 463 >> Accept The Greenwarden
step
	.goto 1437,10.682,60.896
    .home >> Set your Hearthstone to Menethil Harbor
step
    .goto 1437,10.815,60.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo upstairs and talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .target Archaeologist Flagongut
    .turnin 942 >> Turn in The Absent Minded Prospector
    .accept 943 >> Accept The Absent Minded Prospector
step 
    .goto 1437,9.451,59.642
    .fp Menethil >> Get the Menethil Harbor Flight Path
    .fly Thelsamar >> Fly to Thelsamar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .accept 255 >> Accept Mercenaries
    .goto 1432,34.609,44.556
    .target Magistrate Bluntnose
step
    >> Talk to the Wanted Poster
    .goto 1432,37.258,46.444
    .accept 256 >> Accept WANTED: Chok'sul
step << Shaman
    #completewith next
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25 >> Travel to The Farstrider Lodge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .accept 271 >> Accept Vyrin's Revenge
    .goto 1432,81.776,64.139
    .target Vyrin Swiftwind
step
    .goto 1432,37.707,62.444
    >>Kill |cRXP_ENEMY_Ol' Sooty|r
    .complete 271,1
    .mob Ol' Sooty
step
    #completewith next
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25 >> Travel to The Farstrider Lodge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .turnin 271 >> Turn in Vyrin's Revenge
    .accept 531 >> Accept Vyrin's Revenge
    .goto 1432/0,-4296.68,-5690.590
    .target Daryl the Youngling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vyrin Swiftwind|r
    .turnin 531 >> Turn in Vyrin's Revenge
    .goto 1432,81.776,64.139
    .target Vyrin Swiftwind
step
    .goto 1432,74.594,19.880
    #sticky
    #label killOgres
    >>Kill |cRXP_ENEMY_Mo'grosh Ogres|r, |cRXP_ENEMY_Brutes|r, and |cRXP_ENEMY_Enforcers|r.
    .complete 255,1
    .complete 255,2
    .complete 255,3
    .mob Mo'grosh Ogre
    .mob Mo'grosh Brute
    .mob Mo'grosh Enforcer
step
    .goto 1432,74.594,19.880
    >>Kill |cRXP_ENEMY_Chok'sul|r inside and loot him for his |cRXP_LOOT_head|r.
    .complete 256,1
    .mob Chok'sul
step
    #requires killOgres
    .goto 1432,49.506,13.554,25,0
    .goto 1432,49.378,12.876 >> Go to the dam for sleeping bag step
    .turnin 79974 >> Turn in Wet Job
    .accept 79975 >> Accept Eagle's Fist
step
    #completewith next
    .goto 1437,70.076,91.254,20,0
    .goto 1437,67.814,84.141,20,0
    .goto 1437,66.189,77.045,10,0
    .goto 1437,65.629,76.146,10 >> Jump down the waterfall
step << Shaman
    .goto 1437,65.747,76.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hervdana Saegrund|r under the waterfall
    .target Hervdana Saegrund
    .turnin 94500 >> Turn in Call of Water
    .accept 94501 >> Accept Call of Water
step
    .goto Wetlands,56.371,40.401
    .target Rethiel the Greenwarden
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 463 >> Turn in The Greenwarden
    .accept 276 >> Accept Tramping Paws
step
    .goto Wetlands,63.9,62.7,70,0
    .goto Wetlands,62.4,69.5,70,0
    .goto Wetlands,61.5,72.2,70,0
    .goto Wetlands,55.7,75.1
	>>Kill Mosshide Gnolls and Mongrels in the area. The gnolls are more commonly found outside the camps
    .complete 276,1 --Kill Mosshide Gnoll (x15)
    .complete 276,2 --Kill Mosshide Mongrel (x10)
    .mob Mosshide Gnoll
    .mob Mosshide Mongrel
step
    .goto Wetlands,56.4,40.3
    .target Rethiel the Greenwarden
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 276 >> Turn in Tramping Paws
    .accept 277 >> Accept Fire Taboo
step
    .goto Wetlands,49.91,39.36
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >> Accept Daily Delivery
step
    .goto Wetlands,44.2,33.9
	>>Kill gnolls
    .complete 277,1 --Collect Crude Flint (x9)
step
    .goto Wetlands,56.3,40.5
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 277 >> Turn in Fire Taboo
    .target Rethiel the Greenwarden
    .accept 275 >> Accept Blisters on The Land
step
    .goto Wetlands,17.75,27.70,35,0
    .goto Wetlands,19.18,27.77,35,0
    .goto Wetlands,20.92,28.82,35,0
    .goto Wetlands,19.45,24.30,35,0
    .goto Wetlands,20.58,24.25,35,0
    .goto Wetlands,23.24,25.27,35,0
    .goto Wetlands,22.42,22.37,35,0
    .goto Wetlands,25.96,21.38,35,0
    .goto Wetlands,27.54,20.60,35,0
    .goto Wetlands,28.52,20.98,35,0
    >>Kill |cRXP_ENEMY_Fen Creepers|r
    >>|cRXP_WARN_Be careful as they are|r |T132320:0|t[Stealthed] |cRXP_WARN_and patrol around in the shallow water slightly|r
    .complete 275,1  --Kill Fen Creeper (x8)
    .mob Fen Creeper
step
    .goto Wetlands,56.4,40.5
    .target Rethiel the Greenwarden
    >>Talk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >> Turn in Blisters on The Land
    .accept 95646 >> Accept Horrors in the Highland
    .isOnQuest 275
step
    .goto Wetlands,44.2,25.8
    >>Kill slimes around the crypt
    .complete 470,1 --Collect Sida's Bag (x1)
step
    #sticky
    #completewith next
    .vendor 2682>>Buy a Bronze Tube from Fradd Swiftgear (limited supply), skip this step if he doesn't have it or if you already have one
    .goto Wetlands,26.4,25.8
    .collect 4371,1,175,1,1
step
	.goto Wetlands,34.3,41.2,60,0
    .goto Wetlands,38.179,50.889
    .target Ormer Ironbraid
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >> Accept Ormer's Revenge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r and |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 305 >> Turn in In Search of The Excavation Team
    .accept 306 >> Accept In Search of The Excavation Team
    .accept 299 >> Accept Uncovering the Past
    .goto Wetlands,38.909,52.340
    .target Merrin Rockweaver
    .target Prospector Whelgar
step
    .isQuestTurnedIn 942
    .goto Wetlands,38.858,52.208
    >>Loot |cRXP_LOOT_Flagongut's Fossil|r on the ground
    .complete 943,2 
step
	#label fossil
	#sticky
	>>Kill raptors in Wetlands
	.complete 943,1
    .isOnQuest 943
step
    .goto Wetlands,24.7,48.6
	>> Kill raptors in the area
    .complete 294,1 --Kill Mottled Raptor (x10)
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob Mottled Raptor
    .mob Mottled Screecher
step
	.goto Wetlands,34.3,41.4,80,0
    .goto Wetlands,38.179,50.889
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >> Turn in Ormer's Revenge
    .target Ormer Ironbraid
    .accept 295 >> Accept Ormer's Revenge
step
    #requires fossil
    .goto Wetlands,14.1,41.5,70,0
    .goto Wetlands,16.7,39.7,70,0
    .goto Wetlands,18.8,40.0
    >>Kill Gobbler, he patrols around the southern murloc camps
    .complete 279,2 --Collect Gobbler's Head (x1)
    .complete 279,1 --Kill Bluegill Murloc (x12)
	.mob Gobbler
    .mob Bluegill Murloc
step
    .goto Wetlands,11.458,52.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >> Turn in In Search of The Excavation Team
    .target Tarrel Rockweaver
step
    .goto Wetlands,8.6,55.8
    .target James Halloran
    >>Talk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >> Turn in Daily Delivery
    .isOnQuest 469
step
    .zoneskip Wetlands,1
    .goto Wetlands,8.4,58.5
    >>Talk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >> Turn in Claws from the Deep
    .target Karl Boran
    .accept 281 >> Accept Reclaiming Goods
step
    .goto Wetlands,11.7,58.1
    .target Sida
    >>Talk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >> Turn in Digging Through the Ooze
    .isQuestComplete 470
step
    .goto 1437,10.815,60.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo upstairs and talk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .turnin 943 >> Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut
step 
    .goto 1437,9.451,59.642
    >> You can also take the boat if it's here
    .fp Menethil >> Get the Menethil Flight Path
    .fly Southshore >> Fly to Southshore
    .zone 1424 >> Arrive in Southshore
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >> Travel to Thoradin's Wall at the Arathi Highlands/Hillsbrad Foothills zone border
step
    #completewith next
    >>Slightly challenging jump :)
    .goto Arathi Highlands,24.132,21.470,7 >> Climb up the cart and make your way up along the wall
step
    .goto Arathi Highlands,22.466,24.127
    >>Click the |cRXP_PICK_Messenger Bag|r hanging on the wall
    .turnin 79975 >> Turn in Eagle's Fist
    .accept 79976 >> Accept This Must Be The Place
step
    .goto Arathi Highlands,22.466,24.127
    >>Click the |cRXP_PICK_Hastily Rolled-Up Satchel|r on the ground
    .turnin 79976 >> Turn in This Must Be The Place
step
    +Campfire and sleeping bag here if off cd
step
    .hs >> Hearth to Menethil Harbor
step 
    .goto 1437,9.451,59.642
    .fly Thelsamar >> Fly to Thelsamar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .turnin 255 >> Turn in Mercenaries
    .turnin 256 >> Turn in Chok'sul
    .goto 1432,34.609,44.556
    .target Magistrate Bluntnose
step << Shaman
    .goto 1432,41.827,19.001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norric Lochthane|r
    .target Norric Lochthane
    .turnin 94501 >> Turn in Call of Water
    .accept 94502 >> Accept Call of Water
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step << Shaman/Paladin
    .goto 1455,39.778,32.911
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthus Stoneflayer|r
    .target +Balthus Stoneflayer
    .train 8618 >> Train Expert Skinning
step
    .goto 1455,18.564,51.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
step
    .goto 1455/0,-1115.43,-4598.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 968 >> Turn in The Powers Below
    .target Gerrig Bonegrip
    .isOnQuest 968
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
    .goto Ironforge,72.08,51.87
    .target Lomac Gearstrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .turnin 1072 >> Turn in An Old Colleague
    .isOnQuest 1072
step
    #completewith next
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if it's up)|r
    .target Gearcutter Cogspinner
    .subzoneskip 2257
step
    .goto 1455/0,-1330.28,-4840.430
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 26-27 Duskwood
#next 27-28 Ashenvale
#defaultfor Dwarf/Gnome


step
    #completewith next
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him (if it's up)|r
    .target Billibub Cogspinner
step
    .goto 1453,51.6,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Turn in Bazil Thredd
    .target Warden Thelwater
step
    .goto Stormwind City,52.8,86.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Turn in A Scroll from Mauren
    .accept 1078 >> Accept Retrieval for Mauren
    .target Collin Mauren
    .isOnQuest 1075
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto 1453,39.8,84.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto 1453,39.6,84.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[Voidwalker]
    .target Spackle Thornberry
step << Warlock
    .goto Stormwind City,39.2,85.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Turn in Heartswood
    .turnin 65602 >> Turn in What Is Love?
    .accept 1739 >> Accept The Binding
    .accept 65603 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto 1453,39.070,85.802,18,0
    .goto 1453,37.968,86.671,18,0
    .goto 1453,39.697,86.434,18,0
    .goto 1453,39.111,84.314
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .cast 8674 >> |cRXP_WARN_Use the|r |T136065:0|t[Heartswood Core] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Succubus|r
    .use 6913
step << Warlock
    .goto 1453,39.111,84.314
    .use 6913 >> Kill the |cRXP_ENEMY_Summoned Succubus|r
    .complete 1739,1 
    .mob Summoned Succubus
step << Warlock
    .goto 1453,39.111,84.314
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .use 190186 >> |cRXP_WARN_Use the|r |T136065:0|t[Wooden Figurine] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Incubus|r
    .complete 65603,1 
    .mob Summoned Incubus
step << Warlock
    #completewith next
    +|cRXP_WARN_You may now use either the|r |T136220:0|t[Succubus] |cRXP_WARN_or|r |T136221:0|t[Voidwalker] |cRXP_WARN_as your pet|r
    >>|cRXP_WARN_The|r |T136220:0|t[Succubus] |cRXP_WARN_deals significant damage whereas the|r |T136221:0|t[Voidwalker] |cRXP_WARN_provides more survivability|r
step << Warlock
    .goto Stormwind City,39.2,85.2
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >> Turn in The Binding
    .turnin -65603 >> Turn in The Binding
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge
    .target Dungar Longdrink
step
    .goto Redridge Mountains,21.2,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
    .itemcount 150,8
step
    #label RedridgeEnd
    #completewith MadEva
    .zone Duskwood >> Head to Duskwood
    .goto Duskwood,73.48,24.84
step
    #completewith MadEva
    .subzone 42 >> Head to Darkshire
    .goto Duskwood,73.48,24.84,40,0
    .goto Duskwood,75.81,45.29
step
    #label MadEva
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >> Accept The Legend of Stalvan
step
    .goto Duskwood,73.59,46.89
    .target Commander Althea Ebonlocke
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 56 >> Accept The Night Watch
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 66 >> Turn in The Legend of Stalvan
    .target Clerk Daltry
    .accept 67 >> Accept The Legend of Stalvan
step
    .goto Duskwood,72.64,47.59
    >>Talk to |cRXP_FRIENDLY_Sirra|r inside
    .accept 96139 >> Accept The Valor Family
    .target Sirra Von'Indi
step
    .goto Duskwood,73.03,44.41
    >>Talk to |cRXP_FRIENDLY_Avette|r
    .vendor 228 >> Vendor Trash. Repair
    .turnin 95161 >> Turn in Remember That I Love You
    .target Avette Fellwood
step
    .goto Duskwood,75.33,48.69
    .target Elaine Carevin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Accept Raven Hill
    .accept 165 >> Accept The Hermit
step
    .goto Duskwood,75.33,48.69
    .target Elaine Carevin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 164 >> Accept Deliveries to Sven
    >>|cRXP_WARN_If you can't pick up this quest you need to abandon Sven's Revenge from your quest log|r
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fp Duskwood>> Get the Duskwood Flight Path
    .target Felicia Maline
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .itemcount 4371,1 
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
    #sticky
    #completewith endDuskwood
    >> If you see any Lost ghosts kill them and complete their quests, not on route but good turnins. If you find bow, save it for later
    .accept 96137 >> Accept Ira's Dagger
    .accept 79363 >> Accept Silvia's Sword
    .accept 79362 >> Accept Grant's Shield
    .mob Lost Stalker
    .mob Lost Watcher
    .mob Lost Defender
    .mob Lost Knight
step
    #completewith HistoryBook1
    >>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
    >>|cRXP_WARN_Don't start the quest for it yet|r
    .collect 2794,1,337,1 

step
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 
    .complete 56,2 
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.35,69.31,50,0
    .goto Duskwood,77.49,71.30,50,0
    .goto Duskwood,79.38,73.70,50,0
    .goto Duskwood,79.38,70.28
    #label HistoryBook1
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 
    .complete 56,2 
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >> Turn in Raven Hill
    .accept 5 >> Accept Jitters' Growling Gut
    .target Jitters
step
    .goto Duskwood,21.163,55.667
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLoot the |cRXP_LOOT_Memory of Valor|r
    .complete 96139,1
step
    #label Wolves
    #completewith BliztikCheck
    .goto Duskwood,18.040,54.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bliztik|r upstairs
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Bliztik|r doesn't have any|r
    .target Bliztik
step
    #label TheHermit
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Turn in The Hermit
    .target Abercrombie
    .accept 148 >> Accept Supplies from Darkshire
step
    #label BliztikCheck
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Turn in Deliveries to Sven
    .target Sven Yorgen
    .accept 95 >> Accept Sven's Revenge
step
    .goto Westfall,56.55,52.64
    .zone Westfall >> Travel to Westfall
step
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Darkshire >> Fly to Darkshire
    .target Thor
    .zoneskip Duskwood
step
    .goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >> Turn in Jitters' Growling Gut
    .target Chef Grual
    .accept 93 >> Accept Dusky Crab Cakes
step
    .goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .target Chef Grual
    .turnin 93 >> Turn in Dusky Crab Cakes
    .isQuestComplete 93
    .itemcount 2251,6 
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >> Turn in The Night Watch
    .target Commander Althea Ebonlocke
    .accept 57 >> Accept The Night Watch
step
    .goto Duskwood,72.64,47.59
    >>Talk to |cRXP_FRIENDLY_Sirra|r inside
    .turnin 96139 >> Turn in The Valor Family
    .target Sirra Von'Indi
step
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .accept 377 >> Accept Crime and Punishment
    .target Councilman Millstipe
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >> Turn in Supplies from Darkshire
    .target Madame Eva
    .accept 149 >> Accept Ghost Hair Thread
step
    .isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 149 >> Turn in Ghost Hair Thread
    .target Blind Mary
    .accept 154 >> Accept Return the Comb
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >> Turn in Return the Comb
    .target Madame Eva
    .accept 157 >> Accept Deliver the Thread
step
    #label FlyBackDuskwood
    .goto Duskwood,49.85,77.71
    >>Click the |cRXP_PICK_Mound of loose dirt|r on the ground
    .turnin 95 >> Turn in Sven's Revenge
    .accept 230 >> Accept Sven's Camp
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >> Turn in Deliver the Thread
    .target Abercrombie
    .accept 158 >> Accept Zombie Juice
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Turn in Sven's Camp
    .target Sven Yorgen
    .accept 262 >> Accept The Shadowy Figure
step
    #completewith MoonbrookSt
    .zone Westfall >> Travel to Westfall
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>Click the |cRXP_PICK_Old Footlocker|r on the ground
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
step << Shaman
    .goto Westfall,46.20,58.86
    >>Click the stone (arrow maybe a bit off)
    .turnin 94502 >> Turn in Call of Water
    .accept 94503 >> Accept Call of Water
step << Shaman
    .goto Westfall,46.20,58.86
    >>Talk to the |cRXP_FRIENDLY_Minor Manifestation of Water|r
    .turnin 94503 >> Turn in Call of Water
    .accept 94505 >> Accept Call of Water
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Darkshire >> Fly back to Darkshire
    .target Thor
    .subzoneskip 42 
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .itemcount 4371,1 
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
    #completewith next
    >>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
    >>|cRXP_WARN_Don't start the quest for it yet|r
    .collect 2794,1,337,1 
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Accept Worgen in the Woods
    .target Calor
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Turn in The Shadowy Figure
    .target Madame Eva
    .accept 265 >> Accept The Shadowy Search Continues
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 265 >> Turn in The Shadowy Search Continues
    .turnin -68 >> Turn in The Legend of Stalvan
    .target Clerk Daltry
    .accept 266 >> Accept Inquire at the Inn
    .accept 69 >> Accept The Legend of Stalvan
step
    #label ShadowyRot
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >> Turn in Zombie Juice
    .target Tavernkeep Smitts
    .accept 156 >> Accept Gather Rot Blossoms
    .turnin 266 >> Turn in Inquire at the Inn
    .accept 453 >> Accept Finding the Shadowy Figure
step
    .goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .target Chef Grual
    .turnin 93 >> Turn in Dusky Crab Cakes
    .accept 240 >> Accept Return to Jitters
    .itemcount 2251,6 
step
    #completewith HistoryBook
    >>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
    >>|cRXP_WARN_Don't start the quest for it yet|r
    .collect 2794,1,337,1 
step
    #completewith next
    .goto Duskwood,22.95,44.75,150 >> Travel to Raven Hill Cemetery
step
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Rot Blossoms|r
    .complete 57,1 
    .complete 57,2 
    .complete 156,1 
    .mob Skeletal Fiend
    .mob Skeletal Horror
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >> Turn in Finding the Shadowy Figure
    .target Jitters
    .accept 268 >> Accept Return to Sven
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .target Jitters
    .turnin 240 >> Turn in Return to Jitters
    .isOnQuest 240
step
    #label Flanks3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >> Turn in Return to Sven
    .accept 323 >> Accept Proving Your Worth
    .target Sven Yorgen
step
    .goto Duskwood,16.01,38.79
    >>Kill |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r and |cRXP_ENEMY_Skeletal Warders|r
    >>|cRXP_WARN_Enter the Dawning Wood Catacombs for the|r |cRXP_ENEMY_Skeletal Warders|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_a level 35 Elite patrols around the cemetery. Be cautious of him|r
    .complete 323,1 
    .complete 323,2 
    .complete 323,3 
    .mob Skeletal Raider
    .mob Skeletal Healer
    .mob Skeletal Warder
    .unitscan Mor'Ladim
step
    #label HistoryBook
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >> Turn in Proving Your Worth
    .target Sven Yorgen
    .accept 269 >> Accept Seeking Wisdom
step
    .goto Westfall,56.55,52.64
    .zone Westfall >> Travel to Westfall
step
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Darkshire >> Fly to Darkshire
    .target Thor
    .zoneskip Duskwood
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Turn in Gather Rot Blossoms
    .accept 159 >> Accept Juice Delivery
    .target Tavernkeep Smitts
step
    >>Talk to |cRXP_FRIENDLY_Althea|r
    .turnin 57 >>Turn in The Night Watch
    .accept 58 >>Accept The Night Watch
    .goto Duskwood,73.57,46.85
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,28.11,31.46
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >>Turn in Juice Delivery
    .accept 133 >>Accept Ghoulish Effigy
    .target Abercrombie
step
    #completewith next
    >>Loot |T133741:0|t[|cRXP_LOOT_An Old History Book|r] from any Undead/Humanoid in Duskwood
    >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_An Old History Book|r] to start the quest|r
    .collect 2794,1,337,1 
    .accept 337 >> Accept An Old History Book
    .use 2794
step
    .goto Duskwood,25.49,33.90,60,0
    .goto Duskwood,24.79,38.96,60,0
    .goto Duskwood,21.86,38.64,60,0
    .goto Duskwood,21.78,33.55,60,0
    .goto Duskwood,18.18,33.17,60,0
    .goto Duskwood,17.54,34.88,60,0
    .goto Duskwood,15.98,34.41,60,0
    .goto Duskwood,16.79,32.63,60,0
    #loop
    .line Duskwood,25.49,33.90,24.79,38.96,21.86,38.64,21.78,33.55,18.18,33.17,17.54,34.88,15.98,34.41,16.79,32.63,25.49,33.90
    .goto Duskwood,25.49,33.90,45,0
    .goto Duskwood,24.79,38.96,45,0
    .goto Duskwood,21.86,38.64,45,0
    .goto Duskwood,21.78,33.55,45,0
    .goto Duskwood,18.18,33.17,45,0
    .goto Duskwood,17.54,34.88,45,0
    .goto Duskwood,15.98,34.41,45,0
    .goto Duskwood,16.79,32.63,45,0
    .goto Duskwood,25.49,33.90,45,0
    >>AoE |cRXP_ENEMY_Plague Spreaders|r, |cRXP_ENEMY_Bone Chewers|r, and |cRXP_ENEMY_Rotted Ones|r. Loot them for their |cRXP_LOOT_Ghoul Ribs|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Rotted Ones|r have |cRXP_ENEMY_Flesh Eating Worms|r spawn after killing them (1 health, dies to AoE damage)|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Carrion Recluse|r as it casts|r |T132274:0|t[Paralyzing Poison] |cRXP_WARN_(Stuns you for 8 seconds)|r
    .complete 58,1 
    .complete 133,1 
    .mob Plague Spreader
    .mob Bone Chewer
    .mob Rotted One
step
    .goto Duskwood,28.11,31.47
    >>Talk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >>Turn in Ghoulish Effigy
    .accept 134 >>Accept Ogre Thieves
    .target Abercrombie
step
    #label endDuskwood
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
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
step << Rogue
    .goto 1455,51.6,14.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 27-28 Ashenvale
#next 28-29 Blackfathom Deeps
#defaultfor Dwarf/Gnome


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
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Astranaar >> Fly to Astranaar
    .target Caylais Moonfeather
step
    .goto Ashenvale,34.67,48.83
    .target Shindrell Swiftfire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 4581 >> Accept Kayneth Stillwind
step
    .goto Ashenvale,36.61,49.58
    .target Raene Wolfrunner
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1054 >> Accept Culling the Threat
step
    #completewith next
    .goto Ashenvale,34.69,44.30,30,0
    .goto Ashenvale,35.43,41.46,30,0
    .goto Ashenvale,36.28,38.48,30,0
    .goto Ashenvale,36.83,37.56,30 >> Travel to Thistlefur Village. Follow the Arrow for a shortcut
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r |cRXP_WARN_patrols Thistlefur Village|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    .goto Ashenvale,25.27,60.68
    >>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
    >>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed|r
    .complete 973,1
    .mob Ilkrud Magthrull
    .isOnQuest 973
step
    .goto Ashenvale,22.23,52.98
    .target Sentinel Melyria Frostshadow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
    .accept 1022 >> Accept The Howling Vale
step
    .goto Ashenvale,21.73,53.34
    .target Illiyana
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .accept 1021 >> Accept Vile Satyr! Dryads in Danger!
step
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >> Turn in The Tower of Althalaxx
    .accept 1140 >> Accept The Tower of Althalaxx
step
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >> Turn in The Tower of Althalaxx
    .isOnQuest 973
step
    .goto 1440/1,189.71,3185.77
    .target Feero Ironhand
    >>|cRXP_WARN_This quest includes multiple waves of lvl 24 enemies, you can come back later if necessary|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feero Ironhand|r
    .accept 976 >> Accept Supplies to Auberdine
step
    .complete 976,1
step
    .isQuestComplete 976
    .goto 1440/1,189.71,3185.77
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 976 >> Turn in Supplies to Auberdine
step
    .goto Ashenvale,36.61,49.58
    .target Raene Wolfrunner
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Turn in Culling the Threat
    .accept 1024 >> Accept Raene's Cleansing
    .accept 1025 >> Accept An Aggressive Defense
step
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .accept 1035 >> Accept Fallen Sky Lake
step
    .goto Ashenvale,53.53,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1024 >> Turn in Raene's Cleansing
    .target Shael'dryn
    .accept 1026 >> Accept Raene's Cleansing
step
    #completewith next
    .goto Ashenvale,63.0,43.8,60,0
    .goto Ashenvale,59.8,42.6,60,0
    .goto Ashenvale,57.6,39.2,60,0
    .goto Ashenvale,57.8,33.6,60,0
    .goto Ashenvale,55.0,32.8,60,0
    .goto Ashenvale,63.0,46.2,60,0
    .goto Ashenvale,55.0,32.8
    >>Kill |cRXP_ENEMY_Withered Ancients|r and |cRXP_ENEMY_Crazed Ancients|r. Loot them for a |cRXP_LOOT_Wooden Key|r
    .collect 5475,1,1026,1 
    .isOnQuest 1026
    .mob Withered Ancient
    .mob Crazed Ancient
step
    .goto Ashenvale,54.416,35.397
    >>Open the |cRXP_PICK_Worn Chest|r. Loot it for the |cRXP_LOOT_Iron Shaft|r
    .complete 1026,1
step
    #completewith next
    .goto Ashenvale,53.440,36.131,15,0
    .goto Ashenvale,52.698,37.759,20 >> Run up here for a shortcut
    .isOnQuest 1022
step
    .goto Ashenvale,50.49,39.12
    >>Click the |cRXP_PICK_Tome of Mel'Thandris|r on the table
    .complete -1022,1
step
    .goto Ashenvale,78.32,44.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
    .turnin 1021 >> Turn in Vile Satyr! Dryads in Danger!
    .target Anilia
    .accept 1031 >> Accept The Branch of Cenarius
step
    .goto Ashenvale,77.99,42.41
    >>Kill |cRXP_ENEMY_Geltharis|r. Loot him for his |cRXP_LOOT_Branch|r
    .complete -1031,1
    .mob Geltharis
step
    .goto Ashenvale,85.23,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .turnin -4581 >> Turn in Kayneth Stillwind
    .target Kayneth Stillwind
    .accept 1011 >> Accept Forsaken Diseases
step
    .goto Azshara,11.90,77.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarrodenus|r
    .fp Azshara>> Get the Azshara flight path
    .fly Ashenvale>> Fly to Ashenvale
    .target Jarrodenus
step
    .goto Ashenvale,22.23,52.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
    .turnin -1022 >> Turn in The Howling Vale
    .target Sentinel Melyria Frostshadow
    .accept 1037 >> Accept Velinde Starsong
step
    .goto Ashenvale,21.73,53.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .turnin -1031 >> Turn in The Branch of Cenarius
    .target Illiyana
    .accept 1032 >> Accept Satyr Slaying!
step
    .goto Ashenvale,53.53,46.21
    >>May need to wait for RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1026 >> Turn in Raene's Cleansing
    .target Shael'dryn
    .accept 1027 >> Accept Raene's Cleansing
step
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,56.45,63.62,70,0
    .goto Ashenvale,50.08,59.94
    >>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r and a |cRXP_ENEMY_Foulweald Den Watcher|r
    .complete 1025,4 
    .complete 1025,3 
    .complete 1025,2 
    .complete 1025,1 
    .mob Foulweald Den Watcher
    .mob Foulweald Ursa
    .mob Foulweald Totemic
    .mob Foulweald Warrior
step
    .goto Ashenvale,66.649,82.189
    >>Kill the |cRXP_ENEMY_Shadethicket Oracle|r. Loot it for the |cRXP_LOOT_Fallen Moonstone|r
    .complete 1035,1
    .mob Shadethicket Oracle
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse|r
    >>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
    .complete 1027,1 
    .mob Rotting Slime
step
    .goto Ashenvale,75.29,72.00
    >>Loot the |cRXP_LOOT_Bottle of Disease|r on the table
    >>|cRXP_WARN_Be cautious as the |cRXP_ENEMY_Forsaken|r defending it can be in|r |T132320:0|t[Stealth]
    .complete -1011,1 
step
    #label slimes
    .goto Ashenvale,72.6,71.6,60,0
    .goto Ashenvale,69.8,76.2,60,0
    .goto Ashenvale,75.4,73.0,60,0
    .goto Ashenvale,73.6,76.6
    >>Kill |cRXP_ENEMY_Rotting Slimes|r. |cRXP_WARN_After |cRXP_ENEMY_Rotting Slimes|r die a |cRXP_PICK_Rusty Chest|r will spawn on their corpse|r
    >>Open the |cRXP_PICK_Rusty Chests|r. Loot it for the |cRXP_LOOT_Iron Pommel|r
    .complete 1027,1 
    .mob Rotting Slime
step
    .goto Ashenvale,85.23,44.71
    .target Kayneth Stillwind
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .turnin -1011 >> Turn in Forsaken Diseases
step
    .goto Ashenvale,86.221,45.846
    .target Maseara Autumnmoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maseara Autumnmoon|r
    .accept 98417 >> Accept Vengeful Trail
step
    #completewith SatyrHorns
    >>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r. Make sure only one of you is on this quest
    .complete -1032,1 
step
    .goto Ashenvale,81.59,48.57
    >>Click the |cRXP_PICK_Circle of Imprisonment|r in Satyrnaar
    .complete -1140,2
step
    .goto Ashenvale,81.59,48.57
    >>Look around the camps for a scroll to loot
    .complete 98417,1
step
    .goto Ashenvale,86.221,45.846
    .target Maseara Autumnmoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maseara Autumnmoon|r
    .turnin 98417 >> Turn in Vengeful Trail
    .accept 98418 >> Accept Shared Fury
step
    .goto Ashenvale,79,46
    >>Kill |cRXP_ENEMY_Xavian Satyrs|r
    .complete 98418,1
    .complete 98418,2
    .complete 98418,3
    .complete 98418,4
step
    .goto Ashenvale,86.221,45.846
    .target Maseara Autumnmoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maseara Autumnmoon|r
    .turnin 98418 >> Turn in Shared Fury
step
    #label SatyrHorns
    .goto Ashenvale,78.776,46.765,110,0
    .goto Ashenvale,73.835,47.120,100,0
    .goto Ashenvale,66.62,56.99
    >>Click the |cRXP_PICK_Circle of Imprisonment|r in Night Run
    >>|cRXP_WARN_Be cautious of |cRXP_ENEMY_Felmusk Shadowstalkers|r in|r |T132320:0|t[Stealth]
    .complete -1140,1 
step
    .goto Ashenvale,81.42,49.87
    >>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
    .complete -1032,1 
    .mob Felmusk Felsworn
    .mob Felmusk Rogue
    .mob Felmusk Satyr
    .mob Felmusk Shadowstalker
step
    .goto Ashenvale,53.53,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1027 >> Turn in Raene's Cleansing
    .target Shael'dryn
    .accept 1028 >> Accept Raene's Cleansing
step
    #completewith next
    .goto Ashenvale,56.993,51.981,20,0
    .goto Ashenvale,57.369,50.953,20 >> Travel toward the |cRXP_PICK_Hidden Shrine|r
step
    .goto Ashenvale,56.320,49.188
    >>Click the |cRXP_PICK_Hidden Shrine|r
    .turnin 1028 >> Turn in Raene's Cleansing
    .accept 1055 >> Accept Raene's Cleansing
step
    #completewith BFDgroup
    +Start looking for a group for BFD
step
    .goto Ashenvale,53.53,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1055 >> Turn in Raene's Cleansing
    .target Shael'dryn
    .accept 1029 >> Accept Raene's Cleansing
step
    .goto Ashenvale,37.36,51.79
    .target Pelturas Whitemoon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1035 >> Turn in Fallen Sky Lake
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1025 >> Turn in An Aggressive Defense
    .turnin 1029 >> Turn in Raene's Cleansing
    .target Raene Wolfrunner
    .accept 1030 >> Accept Raene's Cleansing
step
    .goto Ashenvale,53.269,74.270,35,0
    .goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
    .isOnQuest 1030
step
    #completewith next
    .cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
    .use 5462
    .isOnQuest 1030
step
    .goto Ashenvale,50.85,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
    .turnin 1030 >> Turn in Raene's Cleansing
    .accept 1045 >> Accept Raene's Cleansing
    .target Krolg
step
    .goto Ashenvale,54.210,74.082,50,0
    .goto Ashenvale,54.747,79.618
    >>Kill |cRXP_ENEMY_Bloodtooth Guards|r and |cRXP_ENEMY_Ran Bloodtooth|r. Loot him for his |cRXP_LOOT_Skull|r
    .complete 1045,2 
    .complete 1045,1 
    .collect 5388,1,1045,1
    .mob Ran Bloodtooth
    .mob Bloodtooth Guard
step
    #completewith krolg1
    #label tkrolg1
    .goto Ashenvale,53.269,74.270,35,0
    .goto Ashenvale,51.443,75.004,45 >> Travel toward |cRXP_FRIENDLY_Krolg|r
    .isOnQuest 1045
step
    #requires tkrolg1
    #completewith next
    .cast 6405 >> |cRXP_WARN_Use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg|r
    .use 5462
    .isOnQuest 1045
step
    #label krolg1
    .goto Ashenvale,50.84,75.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .use 5462 >> |cRXP_WARN_You must use|r |T135463:0|t[Dartol's Rod of Transformation] |cRXP_WARN_to turn into a Furbolg before talking to|r |cRXP_FRIENDLY_Krolg|r
    .turnin 1045 >> Turn in Raene's Cleansing
    .accept 1046 >> Accept Raene's Cleansing
    .target Krolg
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1046 >> Turn in Raene's Cleansing
    .target Raene Wolfrunner
    .isOnQuest 1046
step
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
step
    .goto Ashenvale,21.73,53.34
    .target Illiyana
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .turnin 1032 >> Turn in Satyr Slaying!
    .isOnQuest 1032
step
    #label BFDgroup
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 1140 >> Turn in The Tower of Althalaxx
    .isOnQuest 1140
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 28-29 Blackfathom Deeps
#next 29-30 Wetlands
#defaultfor Dwarf/Gnome


step
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Travel to Blackfathom Deeps
    .subzoneskip 2797
step
    #completewith next
    >>Kill |cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r and |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_You may also loot |cRXP_LOOT_Corrupted Brain Stems|r once inside the Instance|r
    .complete 1275,1 
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Make your way to the BFD Instance Portal. Zone in
step
    #completewith Kelris
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 
    .isOnQuest 1275
step
    #label manuscript
    #sticky
    >>Open the |cRXP_PICK_Pitted Iron Chest|r underwater near the area with the turtles. Loot it for |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 
step
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .turnin -1198 >> Turn in Search of Thaelrid
    .accept 1200 >> Accept Blackfathom Villainy
step
    #requires manuscript
    #completewith Kelris
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 
step
    #requires manuscript
    #label Kelris
    >>Kill |cRXP_ENEMY_Twilight Lord Kelris|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 1200,1 
    .isOnQuest 1200
step
    >>Kill all of the |cRXP_ENEMY_Twilight's Hammer|r. Loot them for their |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 
    .isOnQuest 1199
step
    #label FinalStem
    >>Kill |cRXP_ENEMY_Nagas|r and |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Corrupted Brain Stems|r
    >>If you haven't completed this quest yet, click on the altar at the end of the dungeon to teleport you to the entrance. The mobs outside of the instance can also drop it.
    .complete 1275,1 
step
    .hs >> Hearth to Astranaar
    >>|cRXP_BUY_Buy food/water if needed|r
    .cooldown item,6948,>2,1
step
    .subzone 415 >> Travel to Astranaar
step
    .goto 1440/1,-284.31,2828.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore >> Fly to Darkshore
    .target Daelyshia
step
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Turn in Researching the Corruption
    .target Gershala Nightwhisper
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Caylais Moonfeather
step
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r up stairs
    .turnin 1199 >> Turn in Twilight Falls
    .goto Darnassus,55.239,23.996
    .target Argent Guard Manados
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnwatcher Selgorm|r up stairs
    .turnin 1200 >> Turn in Blackfathom Villainy
    .goto Darnassus,56.167,24.395 
    .target Dawnwatcher Selgorm
step
    #label darnassus
    .goto Darnassus,61.777,39.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
    .turnin -1037 >> Turn in Velinde Starsong
    .target Thyn'tel Bladeweaver
    .accept 1038 >> Accept Velinde's Effects
step
    .goto Darnassus,56.05,79.21,10,0
    .goto Darnassus,62.287,83.289
    >>Run up into the Sentinel's Bunkhouse and across the over-head bridge
    >>Open |cRXP_PICK_Velinde's Locker|r. Loot it for |cRXP_LOOT_Velinde's Journal|r
    .complete -1038,1 
step
    .goto Darnassus,61.777,39.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyn'tel Bladeweaver|r
    .turnin -1038 >> Turn in Velinde's Effects
    .accept 1039 >> Accept The Barrens Port
    .target Thyn'tel Bladeweaver
step
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Darkshore
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Ratchet >> Fly to Ratchet
    .target Vesprystus
step
    .goto The Barrens,63.2,38.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin -1039 >> Turn in The Barrens Port
    .accept 1040 >> Accept Passage to Booty Bay
    .target Wharfmaster Dizzywig
step
    .zone Stranglethorn Vale >> Take the boat to Booty Bay
step
    .goto Stranglethorn Vale,27.2,74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .turnin -1040 >> Turn in Passage to Booty Bay
    .accept 1041 >> Accept The Caravan Road
    .target Caravaneer Ruzzgot
step
    .goto Stranglethorn Vale,27.4,77.8
    .fp Booty Bay >> Get the Booty Bay Flight Path
    .fly Stormwind >> Fly to Stormwind City
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 20-30
--#groupid RXP-SRGCE-A1
#name 29-30 Wetlands
#next 30-31 Stockades
#defaultfor Dwarf/Gnome


step
    #completewith next
    .goto 1453,53,51,20 >> Travel to the Stormwind Cathedral
step
    .isQuestTurnedIn 323
    .goto 1453,49.976,46.022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
    .turnin 269 >> Turn in Seeking Wisdom
    .accept 270 >> Accept The Doomed Fleet
    .target Bishop Farthing
step
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Enter the Deeprun Tram
step
    >> |cRXP_WARN_CRAFT ON TRAM
    .zone Ironforge >> Take the Deeprun Tram to Ironforge
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
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 971 >> Turn in Knowledge in the Deeps
    .target Gerrig Bonegrip
step
    .goto 1455,18.564,51.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
    .goto Ironforge,55.50,47.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands >> Fly to Menethil Harbor << !Shaman
    .fly Thelsamar >> Fly to Thelsamar << Shaman
    .target Gryth Thurden
step << Shaman
    .goto 1432,41.827,19.001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norric Lochthane|r
    .target Norric Lochthane
    .turnin 94505 >> Turn in Call of Water
step << Shaman
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Wetlands >> Fly to Menethil Harbor
    .target Thorgrum Borrelson
step
    #sticky
    #label Mead
    .goto Wetlands,10.69,60.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Buy a|r |T132792:0|t[Flagon of Dwarven Honeymead] |cRXP_BUY_from him|r
    .collect 2594,1,288,1
step
    .goto Wetlands,8,55.8
    .target Sylessa Duskwhisper
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r
    .accept 98208 >> Accept Bloom of the Heavens
step
    .goto Wetlands,11.8,58.6
    .target Caitlin Grassman
    >>Talk to |cRXP_FRIENDLY_Caitlin Grassman|r
    .accept 95647 >> Accept Lost in the Thicket Things
step
    .goto Wetlands,10.6,60.5
    >>Talk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >> Turn in The Doomed Fleet
    .target Glorin Steelbrow
    .accept 321 >> Accept Lightforge Iron
step
    .goto Wetlands,10.9,55.9
    .target Harlo Barnaby
    >>Talk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >> Accept Fall of Dun Modr
step
    >>Go into the Barracks. Talk to Stoutfist
    .goto Wetlands,9.86,57.49
    .target Captain Stoutfist
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .accept 464 >> Accept War Banners
step
	#label relics
	#sticky
	.goto Wetlands,34.3,49.5,0
	>>Loot the 4 relics around the dig site
	.complete 299,1
	.complete 299,2
	.complete 299,3
	.complete 299,4
step
	.goto Wetlands,34.3,41.4,80,0
    .goto Wetlands,34.6,48.0
	>> Kill raptors in the area
    .complete 295,1 --Kill Mottled Scytheclaw (x10)
    .complete 295,2 --Kill Mottled Razormaw (x10)
step
	#requires relics
	.goto Wetlands,38.81,52.39
    .target Prospector Whelgar
    >>Talk to |cRXP_FRIENDLY_Prospector Whelgar|r
	.turnin 299 >>Turn in Uncovering the Past
step
    .goto Wetlands,38.179,50.889
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >> Turn in Ormer's Revenge
    .target Ormer Ironbraid
    .accept 296 >> Accept Ormer's Revenge
step
    .goto Wetlands,31.5,48.9,50,0
    .goto Wetlands,33.3,51.5
	>>Kill Sarltooth atop the hill. Loot him for his Talon. Be careful as he Thrashes and has a 6 minute respawn.
    *Note: He can very very rarely be found patroling the quarry below.
    .complete 296,1 --Collect Sarltooth's Talon (x1)
step
    .goto Wetlands,38.179,50.889
    .target Ormer Ironbraid
    >>Talk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >> Turn in Ormer's Revenge
step
	.goto Wetlands,34.3,41.2,60,0
    .goto Wetlands,44.8,43.9
	>>Kill Dragonmaw Orcs
    .complete 464,1 --Collect Dragonmaw War Banner (x8)
step
    .goto Wetlands,9.9,57.4
    >>Talk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 464 >> Turn in War Banners
    .target Captain Stoutfist
    .accept 465 >> Accept Nek'rosh's Gambit
step
    #requires Mead
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Accept The Third Fleet
    .turnin 288 >> Turn in The Third Fleet
    .accept 289 >> Accept The Cursed Crew
    .target First Mate Fitzsimmons
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Click the |cRXP_PICK_Damaged Crate|r on the ground
    .turnin 281 >> Turn in Reclaiming Goods
    .accept 284 >> Accept The Search Continues
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Click the |cRXP_PICK_Sealed Barrel|r on the ground
    .turnin 284 >> Turn in The Search Continues
    .accept 285 >> Accept Search More Hovels
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Click the |cRXP_PICK_Half-buried Barrel|r on the ground
    .turnin 285 >> Turn in Search More Hovels
    .accept 286 >> Accept Return the Statuette
step
    #loop
    .goto Wetlands,14.00,29.80,0
    .goto Wetlands,15.03,24.05,0
    .goto Wetlands,14.00,29.80,70,0
    .goto Wetlands,15.03,24.05,70,0
    >>Kill |cRXP_ENEMY_Cursed Sailors|r, |cRXP_ENEMY_Cursed Marines|r and |cRXP_ENEMY_First Mate Snellig|r. Loot him for his |cRXP_LOOT_Snuffbox|r
    .complete 289,1 
    .complete 289,2 
    .complete 289,3 
    .mob Cursed Sailor
    .mob Cursed Marine
    .mob First Mate Snellig
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >> Turn in Return the Statuette
    .target Karl Boran
step
    >>Click the |cRXP_PICK_Waterlogged Chest|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Turn in Lightforge Iron
    .accept 324 >>Accept The Lost Ingots
    .isQuestTurnedIn 270
step
    >> Loot Nord'el from one of the wreckages
    .goto Wetlands,12.1,63.8
    .complete 98208
step
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    .goto Wetlands,12.6,65.2
    >>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Ingots|r
    .complete 324,1 
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >> Turn in The Cursed Crew
    .accept 290 >> Accept Lifting the Curse
    .target First Mate Fitzsimmons
step
    .goto Wetlands,8,55.8
    .target Sylessa Duskwhisper
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylessa Duskwhisper|r
    .turnin 98208 >> Turn in Bloom of the Heavens
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >>Turn in The Lost Ingots
    .accept 322 >>Accept Blessed Arm
    .target Glorin Steelbrow
step
    #label Halyndor
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>Run up the mast of the ship
    >>Kill |cRXP_ENEMY_Captain Halyndor|r. Loot him for the |cRXP_LOOT_Strongbox Key|r
    .complete 290,1 
    .mob Captain Halyndor
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>Enter through the large hole on the side of the ship
    >>Click |cRXP_PICK_Intrepid's Locked Strongbox|r on the ground
    .turnin 290 >>Turn in Lifting the Curse
    .accept 292 >>Accept The Eye of Paleth
step
    #label Gambit
    .goto Wetlands,47.45,47.01
    >>Click the |cRXP_PICK_Dragonmaw Catapult|r
    .turnin 465 >>Turn in Nek'rosh's Gambit
    .accept 474 >>Accept Defeat Nek'rosh
step
    .goto Wetlands,53.2,56.0,40,0
    .goto Wetlands,53.2,56.0,0
    >>Kill |cRXP_ENEMY_Chieftain Nek'rosh|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_You can split pull Nek'Rosh from the mobs around him by using|r |T136186:0|t[Rain of Fire] << Warlock
    >>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is snareable|r
    >>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_can be|r |T136183:0|t[Feared] << Warlock
    >>|cRXP_ENEMY_Chieftain Nek'rosh|r |cRXP_WARN_is immune to Fire damage|r << Mage/Warlock/Shaman
    .complete 474,1 
    .mob Chieftain Nek'rosh
step
    .goto Wetlands,49.7,18.3
    .target Rhag Garmason
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 634 >> Accept Plea to the Alliance
step
    >>Travel to Refuge Pointe
    >>Talk to |cRXP_FRIENDLY_Nials|r
    .turnin 634 >>Turn in Plea To The Alliance
    .goto Arathi Highlands,45.83,47.56
    .target Captain Nials
step
    .goto Arathi Highlands,45.76,46.09
    >>Talk to |cRXP_FRIENDLY_Cedrik|r
    .fp Refuge Pointe >> Get the Refuge Pointe flight path
    .target Cedrik Prose
step
    #completewith next
    .goto Wetlands,49.9,18.3
    .target Longbraid the Grim
    >>Talk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 472 >> Turn in Fall of Dun Modr
step
    .goto Wetlands,49.9,18.3
    .target Rhag Garmason
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >> Accept The Thandol Span
    .target Motley Garmason
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >> Accept The Dark Iron War
step
    .goto Wetlands,47.3,16.6
	>> Kill Dark Iron dwarves in the area
    .complete 303,1 --Kill Dark Iron Dwarf (x10)
    .complete 303,2 --Kill Dark Iron Tunneler (x5)
    .complete 303,3 --Kill Dark Iron Saboteur (x5)
    .complete 303,4 --Kill Dark Iron Demolitionist (x5)
step
    .goto Wetlands,49.7,18.3
    .target Motley Garmason
    >>Talk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >> Turn in The Dark Iron War
    .accept 378 >> Accept The Fury Runs Deep
step
    .goto Wetlands,51.2,8.0
	>> Go downstairs and click on the dwarf corpse. Ignore all the mobs.
    .turnin 631 >> Turn in The Thandol Span
    .accept 632 >> Accept The Thandol Span
step
    .goto Wetlands,49.9,18.3
    >> Run back outside and turn in the quest
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >> Turn in The Thandol Span
    .target Rhag Garmason
    .accept 633 >> Accept The Thandol Span
step
    .goto Arathi Highlands,44.3,93.0
	>>Jump down and loot the letter from the corpse underwater
    .accept 637 >> Accept Sully Balloo's Letter
	.use 4433 >>Jump down and loot the letter from the corpse underwater
step
    #completewith next
    .goto Arathi Highlands,52.5,90.4,30 >> Swim east toward the ramp here
step
    .goto Arathi Highlands,48.7,87.9
    .complete 633,1 --Collect Cache of Explosives Destroyed (x1)
step
    #sticky
    #completewith endWetlands
    +Find a group to The Stockades
step
    .goto Wetlands,49.9,18.3
    >>Talk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >> Turn in The Thandol Span
    .target Rhag Garmason
step
    .hs >> Hearth to Ironforge
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Turn in Sully Balloo's Letter
    .timer 17,Sully Balloo's Letter RP
    .accept 683 >> Accept Sara Balloo's Plea
    .target Sara Balloo
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >> Turn in Sara Balloo's Plea
    .accept 686 >> Accept A King's Tribute
    .target King Magni Bronzebeard
step
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Turn in A King's Tribute
    .accept 689 >> Accept A King's Tribute
    .target Grand Mason Marblesten
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
    #label endWetlands
]])