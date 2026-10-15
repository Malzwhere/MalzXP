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
    .goto Searing Gorge,38.804,28.510
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .accept 7722 >> Accept What the Flux?
    .target Master Smith Burninate
step
    .goto Searing Gorge,38.582,27.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .accept 7723 >> Accept Curse These Fat Fingers
    .accept 7724 >> Accept Fiery Menace!
    .accept 7727 >> Accept Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
step
    .goto Searing Gorge,37.645,26.481
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 7728 >> Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
    .accept 7729 >> Accept JOB OPPORTUNITY: Culling the Competition
    .accept 7701 >> Accept WANTED: Overseer Maltorius
step
    .goto Searing Gorge,39.057,38.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
    .accept 3441 >> Accept Divine Retribution
    .target Velarok Windblade
step
    .goto Searing Gorge,39.057,38.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
    .skipgossip
    .complete 3441,1 
    .target Velarok Windblade
step
    .goto Searing Gorge,39.057,38.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
    .turnin 3441 >> Turn in Divine Retribution
    .accept 3442 >> Accept The Flawless Flame
    .target Velarok Windblade
step
    #completewith FlawlessFlame
    >>Kill |cRXP_ENEMY_Heavy War Golems|r and |cRXP_ENEMY_Greater Lava Spiders|r
    .complete 7723,1 
    .goto Searing Gorge,33.20,43.58,0
    .complete 7724,1 
    .goto Searing Gorge,27.56,45.45,0
    .mob Heavy War Golem
    .mob Greater Lava Spider
step
    #completewith FlawlessFlame
    >>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
    >>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
    .complete 7728,1 
    .goto Searing Gorge,39.15,50.18,0
    .goto Searing Gorge,43.33,51.12,0
    .complete 7728,2 
    .goto Searing Gorge,35.73,60.40,0
    .goto Searing Gorge,33.71,53.75,0
    .mob Dark Iron Steamsmith
    .mob Dark Iron Lookout
step
    #label FlawlessFlame
    .goto Searing Gorge,43.83,35.08,0
    .goto Searing Gorge,24.18,54.52,0
    .goto Searing Gorge,28.54,64.55,0
    .goto Searing Gorge,43.83,35.08,70,0
    .goto Searing Gorge,24.18,54.52,70,0
    .goto Searing Gorge,28.54,64.55,70,0
    .goto Searing Gorge,30.10,76.16,70,0
    .goto Searing Gorge,28.54,64.55,70,0
    .goto Searing Gorge,24.18,54.52,70,0
    .goto Searing Gorge,43.83,35.08,70,0
    .goto Searing Gorge,43.83,35.08,70,0
    .goto Searing Gorge,24.18,54.52,70,0
    .goto Searing Gorge,28.54,64.55,70,0
    .goto Searing Gorge,30.10,76.16
    >>Kill |cRXP_ENEMY_Inferno Elementals|r, |cRXP_ENEMY_Blazing Elementals|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for their |cRXP_LOOT_Heart of Flames|r
    >>Kill |cRXP_ENEMY_Heavy War Golems|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for their |cRXP_LOOT_Golem Oils|r
    >>|cRXP_WARN_Prioritize these two objectives|r
    .complete 3442,1 
    .complete 3442,2 
    .mob Inferno Elemental
    .mob Blazing Elemental
    .mob Magma Elemental
    .mob Heavy War Golem
step
    .goto Searing Gorge,39.057,38.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
    .turnin 3442 >> Turn in The Flawless Flame
    .accept 3443 >> Accept Forging the Shaft
    .target Velarok Windblade
step
    #completewith next
    .goto Searing Gorge,47.54,46.89
    .subzone 1443 >> Jump down to the platform below and enter the cave. Follow the arrow
step
    .goto Searing Gorge,46.66,42.48,40,0
    .goto Searing Gorge,51.67,37.02,40,0
    .goto Searing Gorge,45.41,21.65
    >>Kill |cRXP_ENEMY_Incendosaurs|r
    .complete 7727,1 
    .mob Incendosaur
step
    .goto Searing Gorge,48.41,41.08,40,0
    .goto Searing Gorge,47.94,47.58,40,0
    .goto Searing Gorge,49.86,45.97,40,0
    .goto Searing Gorge,49.75,45.82,35 >> Run back out of the cave, then follow the platform to the upper entrance of the cave
    .isOnQuest 7729,3443,7722,7701
step
    #completewith Daggers
    .isOnQuest 7701
    >>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Cast|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull him and then cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly. Ensure you've cleared the area around you first|r << Warlock
    >>|cRXP_WARN_Remember to keep|r |T136121:0|t[Shadow Ward] |cRXP_WARN_on yourself as well|r << Warlock
    >>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
    .complete 7701,1 
    .goto Searing Gorge,40.81,35.77
    .mob Overseer Maltorius
step
    #completewith Daggers
    .isOnQuest 7722
    >>Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the bench
    >>|cRXP_WARN_Pull all 3 mobs with your Pet then loot immediately|r << Hunter
    >>|cRXP_WARN_Pull all 3 mobs then cast|r |T136184:0|t[Psychic Scream] |cRXP_WARN_and loot immediately|r << Priest
    >>|cRXP_WARN_Pull all 3 with a Voidwalker or Succubus (Seduce one of if using Succubus). You can also use|r |T136183:0|t[Fear] |cRXP_WARN_or|r |T136147:0|t[Howl of Terror] |cRXP_WARN_then loot immediately|r << Warlock
    >>|cRXP_WARN_Build up 25+ Rage, then cast|r |T132154:0|t[Intimidating Shout] |cRXP_WARN_on all 3 mobs then loot immediately|r << Warrior
    >>|cRXP_WARN_Only attempt this solo if you have 3/3 in|r |T132155:0|t[Improved Gouge] << Rogue
    >>|cRXP_WARN_Cast|r |T132310:0|t[Sap] |cRXP_WARN_on one guard, then position your self right next to the|r |cRXP_LOOT_Secret Plans: Fiery Flux|r|cRXP_WARN_.|r |cRXP_WARN_Cast|r |T136175:0|t[Blind] |cRXP_WARN_on another then|r |T132155:0|t[Gouge] |cRXP_WARN_on the last one, ensuring you loot immediately after using|r |T132155:0|t[Gouge] << Rogue
    >>|cRXP_WARN_Cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on |cRXP_ENEMY_Overseer Maltorius|r then|r |T135848:0|t[Frost Nova] |cRXP_WARN_the other 2 elites then immediately|r |T135736:0|t[Blink] |cRXP_WARN_in and loot|r << Mage
    >>|cRXP_WARN_After looting, jump down below to the main floor OR the ledge to the right of the plans to evade any mobs you have aggro of|r
    >>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
    .complete 7722,1 
    .goto Searing Gorge,40.447,35.739
step
    #label Daggers
    .goto Searing Gorge,43.18,35.09,60,0
    .goto Searing Gorge,43.54,31.51,60,0
    .goto Searing Gorge,45.81,25.66,60,0
    .goto Searing Gorge,43.18,35.09
    >>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for their |cRXP_LOOT_Thorium Plated Daggers|r and the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
    >>|cRXP_WARN_Any |cRXP_ENEMY_Dark Iron Dwarf|r may drop |cRXP_LOOT_Thorium Plated Daggers|r and the|r |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]
    >>|cRXP_WARN_Use the |T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r] to start the quest|r
    .complete 7729,1 
    .complete 7729,2 
    .complete 3443,1 
    .collect 11818,1,4451 
    .disablecheckbox
    .accept 4451 >> Accept The Key to Freedom
    .use 11818 
    .mob Dark Iron Taskmaster
    .mob Dark Iron Slaver
step
    .isOnQuest 7701
    >>Kill |cRXP_ENEMY_Overseer Maltorius|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Cast|r |T136186:0|t[Rain of Fire] |cRXP_WARN_to split pull him and then cast|r |T136183:0|t[Fear] |cRXP_WARN_on him repeatedly. Ensure you've cleared the area around you first|r << Warlock
    >>|cRXP_WARN_Remember to keep|r |T136121:0|t[Shadow Ward] |cRXP_WARN_on yourself as well|r << Warlock
    >>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
    .complete 7701,1 
    .link https://www.twitch.tv/videos/1440175809?filter=highlights&sort=time >> |cRXP_WARN_Click here for video reference|r << Warlock
    .goto Searing Gorge,40.81,35.77
    .mob Overseer Maltorius
step
    .isOnQuest 7722
    >>Loot the |cRXP_LOOT_Secret Plans: Fiery Flux|r on the bench
    >>|cRXP_WARN_Pull all 3 mobs with your Pet then loot immediately|r << Hunter
    >>|cRXP_WARN_Pull all 3 mobs then cast|r |T136184:0|t[Psychic Scream] |cRXP_WARN_and loot immediately|r << Priest
    >>|cRXP_WARN_Pull all 3 with a Voidwalker or Succubus (Seduce one of if using Succubus). You can also use|r |T136183:0|t[Fear] |cRXP_WARN_or|r |T136147:0|t[Howl of Terror] |cRXP_WARN_then loot immediately|r << Warlock
    >>|cRXP_WARN_Build up 25+ Rage, then cast|r |T132154:0|t[Intimidating Shout] |cRXP_WARN_on all 3 mobs then loot immediately|r << Warrior
    >>|cRXP_WARN_Only attempt this solo if you have 3/3 in|r |T132155:0|t[Improved Gouge] << Rogue
    >>|cRXP_WARN_Cast|r |T132310:0|t[Sap] |cRXP_WARN_on one guard, then position your self right next to the|r |cRXP_LOOT_Secret Plans: Fiery Flux|r|cRXP_WARN_.|r |cRXP_WARN_Cast|r |T136175:0|t[Blind] |cRXP_WARN_on another then|r |T132155:0|t[Gouge] |cRXP_WARN_on the last one, ensuring you loot immediately after using|r |T132155:0|t[Gouge] << Rogue
    >>|cRXP_WARN_Cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on |cRXP_ENEMY_Overseer Maltorius|r then|r |T135848:0|t[Frost Nova] |cRXP_WARN_the other 2 elites then immediately|r |T135736:0|t[Blink] |cRXP_WARN_in and loot|r << Mage
    >>|cRXP_WARN_After looting, jump down below to the main floor OR the ledge to the right of the plans to evade any mobs you have aggro of|r
    >>|cRXP_WARN_This quest can be quite difficult. Look for additional group members if required|r
    .complete 7722,1 
    .goto Searing Gorge,40.447,35.739
step
    .goto Searing Gorge,39.057,38.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
    .turnin 3443 >> Turn in Forging the Shaft
    .accept 3452 >> Accept The Flame's Casing
    .target Velarok Windblade
step
    .goto Searing Gorge,22.98,37.82,70,0
    .goto Searing Gorge,27.10,24.40,60,0
    .goto Searing Gorge,22.98,37.82
    >>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for the |cRXP_LOOT_Symbol of Ragnaros|r
    .complete 3452,1 
    .mob Twilight Dark Shaman
    .mob Twilight Fire Guard
    .mob Twilight Geomancer
    .mob Twilight Idolater
step
    .goto Searing Gorge,39.057,38.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
    .turnin 3452 >> Turn in The Flame's Casing
    .accept 3453 >> Accept The Torch of Retribution
    .timer 28,The Torch of Retribution RP
    .turnin 3453 >> Turn in The Torch of Retribution
    .accept 3454 >> Accept The Torch of Retribution
    .target Velarok Windblade
step
    .isQuestTurnedIn 3452
    .goto Searing Gorge,39.057,38.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
    .accept 3453 >> Accept The Torch of Retribution
    .timer 28,The Torch of Retribution RP
    .turnin 3453 >> Turn in The Torch of Retribution
    .accept 3454 >> Accept The Torch of Retribution
    .target Velarok Windblade
step
    .isQuestTurnedIn 3452
    .goto Searing Gorge,39.055,39.067
    >>Click on the |cRXP_PICK_Torch of Retribution|r
    .turnin 3454 >> Turn in The Torch of Retribution
step
    .isQuestTurnedIn 3452
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r and |cRXP_FRIENDLY_Squire Maltrake|r
    .accept 3462 >> Accept Squire Maltrake
    .goto Searing Gorge,39.057,38.990
    .turnin 3462 >> Turn in Squire Maltrake
    .accept 3463 >> Accept Set Them Ablaze!
    .goto Searing Gorge,39.165,38.997
    .target Velarok Windblade
    .target Squire Maltrake
step
    #completewith WarGolem
    >>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
    >>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
    .complete 7728,1 
    .goto Searing Gorge,39.15,50.18,0
    .goto Searing Gorge,43.33,51.12,0
    .complete 7728,2 
    .goto Searing Gorge,35.73,60.40,0
    .goto Searing Gorge,33.71,53.75,0
    .mob Dark Iron Steamsmith
    .mob Dark Iron Lookout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Heavy War Golems|r
    .complete 7723,1 
    .goto Searing Gorge,33.20,43.58,0
    .mob Heavy War Golem
step
    >>Kill |cRXP_ENEMY_Greater Lava Spiders|r
    .complete 7724,1 
    .goto Searing Gorge,32.05,42.00,70,0
    .goto Searing Gorge,27.4,45.6,70,0
    .goto Searing Gorge,28.4,56.6,70,0
    .goto Searing Gorge,30.90,66.71,70,0
    .goto Searing Gorge,22.86,76.47,70,0
    .goto Searing Gorge,27.56,45.45
    .mob Greater Lava Spider
step
    #label WarGolem
    >>Kill |cRXP_ENEMY_Heavy War Golems|r
    .complete 7723,1 
    .goto Searing Gorge,50.6,39.6,70,0
    .goto Searing Gorge,41.6,41.6,70,0
    .goto Searing Gorge,32.8,45.8,70,0
    .goto Searing Gorge,32.4,53.6,70,0
    .goto Searing Gorge,35.6,40.4,70,0
    .goto Searing Gorge,41.6,41.6,70,0
    .goto Searing Gorge,33.20,43.58
    .mob Heavy War Golem
step
    #completewith next
    >>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
    >>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
    .complete 7728,1 
    .goto Searing Gorge,39.15,50.18,0
    .goto Searing Gorge,43.33,51.12,0
    .complete 7728,2 
    .goto Searing Gorge,35.73,60.40,0
    .goto Searing Gorge,33.71,53.75,0
    .goto Searing Gorge,44.03,60.90,0
    .goto Searing Gorge,50.06,54.73,0
    .mob Dark Iron Steamsmith
    .mob Dark Iron Lookout
step
    .isQuestTurnedIn 3452
    >>Click the |cRXP_PICK_Sentry Braziers|r atop the Towers
    >>|cRXP_WARN_You must have the|r |T135466:0|t[Torch of Retribution] |cRXP_WARN_equiped|r
    .use 10515 
    .complete 3463,4 
    .goto Searing Gorge,33.303,54.477
    .complete 3463,1 
    .goto Searing Gorge,35.667,60.682
    .complete 3463,2 
    .goto Searing Gorge,44.030,60.908
    .complete 3463,3 
    .goto Searing Gorge,50.069,54.737
step
    .goto Searing Gorge,65.592,62.172
    >>Click on the |cRXP_PICK_Wooden Outhouse|r
    .accept 4451 >> Accept The Key to Freedom
    .turnin 4451 >> Turn in The Key to Freedom
    .use 11818 
    .itemcount 11818,1 
step
    .goto Searing Gorge,65.592,62.172
    >>Click on the |cRXP_PICK_Wooden Outhouse|r
    .accept 4449 >> Accept Caught!
step
    #sticky
    #label DIG
    .goto Searing Gorge,63.1,60.9
    >>Kill |cRXP_ENEMY_Dark Iron Geologists|r. Loot them for their |cRXP_LOOT_Silk Cloth|r if you still need more
    >>|cRXP_WARN_You most likely will have to come back for more |cRXP_ENEMY_Dark Iron Geologists|r later|r
    .complete 4449,1 
    .collect 4306,15 
    .mob Dark Iron Geologist
step
    .goto Searing Gorge,71.92,73.79,50,0
    .goto Searing Gorge,72.64,79.74
    >>Kill |cRXP_ENEMY_Margol the Rager|r. Loot it for |T134229:0|t[|cRXP_LOOT_Margol's Horn|r]
    >>|cRXP_WARN_Do not Accept the quest for this yet|r
    .collect 10000,1,3181,1 
    .mob Margol the Rager
step
    #requires DIG
    .goto Searing Gorge,65.592,62.172
    >>Click on the |cRXP_PICK_Wooden Outhouse|r
    .turnin 4449 >> Turn in Caught!
step
    .goto Searing Gorge,63.879,60.978
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorius Stonetender|r
    >>|cRXP_WARN_This will start an escort. Clear the surrounding area of the pit before accepting this quest|r
    .accept 3367 >> Accept Suntara Stones
    .target Dorius Stonetender
step
    .goto Searing Gorge,74.448,19.287
    >>Escort |cRXP_FRIENDLY_Dorius|r to the Loch Modan Pass Gate
    .complete 3367,1 
    .target Dorius Stonetender
step
    .goto Searing Gorge,74.448,19.287
    >>Click the |cRXP_PICK_Singed Letter|r on the ground
    >>|cRXP_WARN_If the |cRXP_PICK_Singed Letter|r has not spawned, you will need to abandon Suntara Stones and complete the escort again. This is a bug with WoW Classic|r
    .turnin 3367 >> Turn in Suntara Stones
    .accept 3368 >> Accept Suntara Stones
step
    >>Kill |cRXP_ENEMY_Dark Iron Steamsmiths|r. Loot them for the |cRXP_LOOT_Smithing Tuyere|r
    >>Kill |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for the |cRXP_LOOT_Lookout's Spyglass|r
    .complete 7728,1 
    .goto Searing Gorge,39.15,50.18,0
    .goto Searing Gorge,43.33,51.12,0
    .complete 7728,2 
    .goto Searing Gorge,35.73,60.40,0
    .goto Searing Gorge,33.71,53.75,0
    .goto Searing Gorge,44.03,60.90,0
    .goto Searing Gorge,50.06,54.73,0
    .mob Dark Iron Steamsmith
    .mob Dark Iron Lookout
step
    .isQuestTurnedIn 3452
    .goto Searing Gorge,39.165,38.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3463 >> Turn in Set Them Ablaze!
    .target Squire Maltrake
step
    .isQuestTurnedIn 3452
    .goto Searing Gorge,38.847,38.985
    >>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r on the ground
    .accept 3481 >> Accept Trinkets...
    .turnin 3481 >> Turn in Trinkets...
step
    .isQuestTurnedIn 3452
    #completewith TPturnins
    .use 10569 >>|cRXP_WARN_Open the|r |T132595:0|t[Hoard of the Black Dragonflight]
    +|cRXP_WARN_Ensure you keep the|r |T134430:0|t[Black Dragonflight Molt]|cRXP_WARN_. Do not destroy it. You will need it later|r
step
    .goto Searing Gorge,37.737,26.561
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
    .turnin 7701 >>Turn in WANTED: Overseer Maltorius
    .target Lookout Captain Lolo Longstriker
step
    .goto Searing Gorge,38.582,27.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .turnin 7723 >> Turn in Curse These Fat Fingers
    .turnin 7724 >> Turn in Fiery Menace!
    .turnin 7727 >> Turn in Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
step
    .goto Searing Gorge,38.804,28.510
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .turnin 7722 >> Turn in What the Flux?
    .target Master Smith Burninate
step
    #label TPturnins
    .goto Searing Gorge,38.973,27.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r
    .turnin 7729 >> Turn in JOB OPPORTUNITY: Culling the Competition
    .turnin 7728 >> Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
    .target Taskmaster Scrange
step
    .use 10000 >>|cRXP_WARN_Use |T134229:0|t[|cRXP_LOOT_Margol's Horn|r] to start the quest|r
    .collect 10000,1,3181,1 
    .accept 3181 >> Accept The Horn of the Beast
    .mob Margol the Rager
step
    .isOnQuest 3181
    .goto Searing Gorge,37.935,30.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
    .fly Loch Modan>> Fly to Loch Modan
    .target Lanie Reed
step
    .isOnQuest 3181
    .goto Loch Modan,18.186,84.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
    .turnin 3181 >> Turn in The Horn of the Beast
    .target Mountaineer Pebblebitty
step
    .isQuestTurnedIn 3181
    .goto Loch Modan,18.186,84.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
    .accept 3182 >> Accept Proof of Deed
    .target Mountaineer Pebblebitty
step
    .requires quest,2994
    .goto Blasted Lands,66.898,19.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
    .turnin 2991 >> Turn in Nekrum's Medallion
    .accept 2992 >> Accept The Divination
    .timer 11,The Divination RP
    .turnin 2992 >> Turn in The Divination
    .accept 2993 >> Accept Return to the Hinterlands
    .target Thadius Grimshade
step
    .requires quest,2994
    .isQuestTurnedIn 2991
    .goto Blasted Lands,66.898,19.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r atop the Tower
    .accept 2992 >> Accept The Divination
    .timer 11,The Divination RP
    .turnin 2992 >> Turn in The Divination
    .accept 2993 >> Accept Return to the Hinterlands
    .target Thadius Grimshade
step
    .goto Blasted Lands,65.6,24.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandra Constantine|r
    .fly Aerie Peak >> Fly to Aerie Peak in The Hinterlands
    .target Alexandra Constantine
step
    .isOnQuest 2993
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2993 >> Turn in Return to the Hinterlands
    .accept 2994 >> Accept Saving Sharpbeak
    .target Gryphon Master Talonaxe
step
    .isQuestTurnedIn 2993
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2994 >> Accept Saving Sharpbeak
    .target Gryphon Master Talonaxe
step
    .goto The Hinterlands,59.6,77.4
    >>Kill the |cRXP_ENEMY_Vile Priestess Hexx|r. Loot it for its |cRXP_LOOT_Hexx's Key|r
    >>|cRXP_WARN_She can be found at the very top of Jintha'Alor|r
    .collect 9472,1,2994,1 
step
    .requires quest,2994
    #completewith next
    >> Head north to another cave passage
    .goto The Hinterlands,56,68,30
    .goto The Hinterlands,53.6,66.8
step
    .requires quest,2994
    .goto The Hinterlands,53.6,66.8
    >>Open Sharpbeak's cage and release him
    .complete 2994,1 
step
    .goto The Hinterlands,57.60,86.79
    >>Loot the |cRXP_LOOT_Ancient Egg|r
    .complete 4787,1 
    .isQuestTurnedIn 3527
step
    #label HinterlandsEnd
    .goto The Hinterlands,9.8,44.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2994 >> Turn in Saving Sharpbeak
    .target Gryphon Master Talonaxe
step
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 4787
    .turnin 4787 >> Turn in The Ancient Egg
    .target Yeh'kinya
step
    .turnin 3182
    .turnin 3368
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
step
    .hs >> Hearth to Nijel's Point
step
    .goto Desolace,64.64,9.15,0
    .goto Desolace,63.827,10.669
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Marandis|r
    .turnin 7065 >> Turn in Corruption of Earth and Seed
    .target Keeper Marandis
step
    .goto Desolace,68.501,8.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talendria|r
    .turnin 7041 >> Turn in Vyletongue Corruption
    .target Talendria
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
]])


RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group MalzXP Forever Duo Guide
#subgroup Duo 50-60
--#groupid RXP-SRGCE-A1
#name 52-52 Alcaz Island
#next 52-53 Un'goro Crater
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
#name 52-53 Un'goro Crater
#next 53-54 Sunken Temple
#defaultfor Dwarf/Gnome


step
    .goto Tanaris,51.059,26.873
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2641 >> Turn in Sprinkle's Secret Ingredient
    .accept 2661 >> Accept Delivery for Marin
    .target Sprinkle
step
    .goto Tanaris,50.887,26.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 4493 >> Turn in March of the Silithid
    .accept 4496 >> Accept Bungle in the Jungle
    .target Alchemist Pestlezugg
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
step
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4289 >> Turn in The Apes of Un'Goro
    .accept 4301 >> Accept The Mighty U'cha
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
    #optional
    .goto Un'Goro Crater,67.657,16.758
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    >>Skip this quest if no mithril casing
    .accept 4244 >> Accept Chasing A-Me 01
    .turnin 4244 >> Turn in Chasing A-Me 01
    .accept 4245 >> Accept Chasing A-Me 01
    .itemcount 10561,1 
    .target A-Me 01
step
    #optional
    .isQuestTurnedIn 4244
    .goto Un'Goro Crater,67.657,16.758
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .accept 4245 >> Accept Chasing A-Me 01
    .target A-Me 01
step
    #optional
    .isOnQuest 4245
    .goto Un'Goro Crater,46.378,13.444
    >>Escort |cRXP_FRIENDLY_A-Me 01|r to |cRXP_FRIENDLY_Karna Remtravel|r at Marshal's Refuge
    .complete 4245,1 
    .target A-Me 01
step
    #optional
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
#name 53-54 Sunken Temple
#next 54-55 Felwood
#defaultfor Dwarf/Gnome

step
    .accept 1446 >> Accept Jammalan the Prophet
    .accept 3528 >> Accept The God Hakkar
    .accept 3446 >> Accept Into the Depths
    .accept 1475 >> Accept Into the Temple of Atal'Hakkar
    .accept 4143 >> Accept Haze of Evil
    .accept 8422 >> Accept Trolls of a Feather << Warlock
    .accept 8413 >> Accept Da Voodoo << Shaman
    .accept 8418 >> Accept Forging the Mightstone << Paladin
    .accept 3373 >> Accept Essence of Eranikus
step
    .turnin 1446 >> Turn in Jammalan the Prophet
    .turnin 3528 >> Turn in The God Hakkar
    .turnin 3446 >> Turn in Into the Depths
    .turnin 1475 >> Turn in Into the Temple of Atal'Hakkar
    .turnin 4143 >> Turn in Haze of Evil
    .turnin 8422 >> Turn in Trolls of a Feather << Warlock
    .turnin 8413 >> Turn in Da Voodoo << Shaman
    .turnin 8418 >> Turn in Forging the Mightstone << Paladin
    .turnin 3373 >> Turn in Essence of Eranikus
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
    .goto Ironforge,75.768,23.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laris Geardawdle|r
    .accept 4512 >> Accept A Little Slime Goes a Long Way
    .target Laris Geardawdle
step
    .goto Ironforge,77.539,11.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r
    .accept 3448 >> Accept Passing the Burden
    .target Historian Karnik
step
    .goto Ironforge,30.96,4.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tymor|r
    .turnin 3448 >> Turn in Passing the Burden
    .accept 3449 >> Accept Arcane Runes
    .accept 3450 >> Accept An Easy Pickup
    .target Tymor
step
    .isOnQuest 3201
    .goto Loch Modan,18.186,84.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Pebblebitty|r
    .turnin 3201 >> Turn in At Last!
    .target Mountaineer Pebblebitty
step
    #completewith next
    .goto Ashenvale,55.97,31.97,0
    .goto Felwood,54.14,86.83
    .zone Felwood >> Travel to Felwood
step
    .goto Felwood,54.14,86.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
    .accept 4101 >> Accept Cleansing Felwood
    .target Arathandris Silversky
step
    .goto Felwood,50.927,85.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
    .accept 8460 >> Accept Timbermaw Ally
    .target Grazle
step
    .goto Felwood,48.48,89.60,70,0
    .goto Felwood,48.22,93.81,70,0
    .goto Felwood,46.68,88.03,70,0
    .goto Felwood,48.48,89.60,70,0
    .goto Felwood,48.22,93.81,70,0
    .goto Felwood,46.68,88.03,70,0
    .goto Felwood,48.48,89.60,70,0
    .goto Felwood,48.22,93.81,70,0
    .goto Felwood,46.68,88.03,70,0
    .goto Felwood,48.48,89.60,70,0
    .goto Felwood,48.22,93.81,70,0
    .goto Felwood,46.68,88.03,70,0
    .goto Felwood,48.48,89.60,70,0
    .goto Felwood,48.22,93.81
    >>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Gardeners|r
    .complete 8460,1 
    .complete 8460,2 
    .complete 8460,3 
    .mob Deadwood Warrior
    .mob Deadwood Pathfinder
    .mob Deadwood Gardener
step
    .goto Felwood,50.927,85.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
    .turnin 8460 >> Turn in Timbermaw Ally
    .accept 8462 >> Accept Speak to Nafien
    .target Grazle
step
    #completewith RepCheck
    .goto Felwood,46.68,88.03,0
    .goto Felwood,48.22,93.81,0
    .reputation 576,unfriendly
    >>Grinding reputation to Unfriendly can be a wise choice as this will make the Furbolgs in the northern tunnel not aggressive towards you. You can also do this later up north but they are higher level
    .mob Deadwood Warrior
    .mob Deadwood Pathfinder
    .mob Deadwood Gardener
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .accept 5155 >> Accept Forces of Jaedenar
    .goto Felwood,51.21,82.10
    .target Greta Mosshoof
step
    .goto Felwood,50.889,81.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .accept 5156 >> Accept Verifying the Corruption
    .target Taronn Redfeather
step
    #label RepCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .accept 4421 >> Accept The Corruption of the Jadefire
    .goto Felwood,51.350,81.511
    .target Eridan Bluewind
step
    >>Kill |cRXP_ENEMY_Jadefire Felsworns|r, |cRXP_ENEMY_Jadefire Shadowstalkers|r, |cRXP_ENEMY_Jadefire Rogues|r and |cRXP_ENEMY_Xavathras|r
    .complete 4421,1 
    .goto Felwood,37.19,68.93,60,0
    .goto Felwood,37.34,66.91,60,0
    .goto Felwood,32.23,67.10,60,0
    .goto Felwood,37.19,68.93,60,0
    .goto Felwood,37.34,66.91
    .complete 4421,2 
    .goto Felwood,37.19,68.93,60,0
    .goto Felwood,37.34,66.91,60,0
    .goto Felwood,32.23,67.10,60,0
    .goto Felwood,37.19,68.93,60,0
    .goto Felwood,37.34,66.91
    .complete 4421,3 
    .goto Felwood,37.19,68.93,60,0
    .goto Felwood,37.34,66.91,60,0
    .goto Felwood,32.23,67.10,60,0
    .goto Felwood,37.19,68.93,60,0
    .goto Felwood,37.34,66.91
    .complete 4421,4 
    .goto Felwood,32.23,67.10
    .mob Jadefire Felsworn
    .mob Jadefire Shadowstalker
    .mob Jadefire Rogue
    .mob Xavathras
step << Warlock
    .isOnQuest 8419
    .goto Felwood,43.27,84.98,45,0
    .goto Felwood,43.41,88.13,70,0
    .goto Felwood,39.45,84.55
    >>Kill |cRXP_ENEMY_Jadefire Satyrs|r and |cRXP_ENEMY_Jadefire Felsworns|r. Loot them for a Felcloth
    .collect 14256,1,8419,1 
    .mob Jadefire Satyr
    .mob Jadefire Felsworn
step << Warlock
    .isOnQuest 8419
    .goto Felwood,43.27,84.98,45,0
    .goto Felwood,43.41,88.13,70,0
    .goto Felwood,39.45,84.55
    >>Kill |cRXP_ENEMY_Jadefire Satyrs|r and |cRXP_ENEMY_Jadefire Felsworns|r. Loot them for a Felcloth
    .collect 14256,1,8419,1 
    .mob Jadefire Satyr
    .mob Jadefire Felsworn
step
    #completewith next
    .use 11912 >> |cRXP_WARN_Open the|r |T132763:0|t[Package of Empty Ooze Containers]
    .collect 11914,6 
    .collect 11948,6 
step
    .goto Felwood,40.77,66.86
    >>Kill |cRXP_ENEMY_Cursed Oozes|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Empty Cursed Ooze Jars] |cRXP_WARN_on their corpses|r
    .complete 4512,1 
    .use 11912 
    .use 11914 
    .mob Cursed Ooze
step << Warlock
    .isQuestComplete 8419
    .goto Felwood,41.52,44.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8419 >> Turn in An Imp's Request
    .accept 8421 >> Accept The Wrong Stuff
    .target Impsy
step << Warlock
    .isQuestTurnedIn 8419
    .goto Felwood,41.52,44.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .accept 8421 >> Accept The Wrong Stuff
    .target Impsy
step << Warlock
    .isQuestComplete 8419
    .goto Felwood,41.52,44.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8419 >> Turn in An Imp's Request
    .target Impsy
step << Warlock
    .isOnQuest 8421
    #completewith FinalOoze
    .goto Felwood,40.48,59.07,0
    .goto Felwood,39.98,54.76,0
    >>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
    .complete 8421,2 
    .mob Tainted Ooze
step
    #completewith next
    .goto Felwood,40.48,59.07,0
    .goto Felwood,39.98,54.76,0
    >>Kill |cRXP_ENEMY_Tainted Oozes|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Empty Tainted Ooze Jars] |cRXP_WARN_on their corpses|r
    .use 11948 
    .complete 4512,2 
    .mob Tainted Ooze
step
    .goto Felwood,38.55,59.14,50,0
    .goto Felwood,36.49,61.40,60,0
    .goto Felwood,35.01,59.83,60,0
    .goto Felwood,36.49,61.40,60,0
    .goto Felwood,38.55,59.14,60,0
    .goto Felwood,36.49,61.40
    >>Kill |cRXP_ENEMY_Jaedenar Hounds|r, |cRXP_ENEMY_Jaedenar Guardians|r, |cRXP_ENEMY_Jaedenar Adepts|r and |cRXP_ENEMY_Jaedenar Cultists|r
    .complete 5155,1 
    .complete 5155,2 
    .complete 5155,3 
    .complete 5155,4 
    .mob Jaedenar Hound
    .mob Jaedenar Guardian
    .mob Jaedenar Adept
    .mob Jaedenar Cultist
step
    #label FinalOoze
    .goto Felwood,40.48,59.07,70,0
    .goto Felwood,39.98,54.76,0
    >>Kill |cRXP_ENEMY_Tainted Oozes|r
    >>|cRXP_WARN_Use the|r |T134864:0|t[Empty Tainted Ooze Jars] |cRXP_WARN_on their corpses|r
    .use 11948 
    .complete 4512,2 
    .mob Tainted Ooze
step << Warlock
    .isOnQuest 8421
    .goto Felwood,40.48,59.07,70,0
    .goto Felwood,39.98,54.76,0
    >>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for their |cRXP_LOOT_Bloodvenom Essences|r
    .complete 8421,2 
    .mob Tainted Ooze
step
    .goto Felwood,51.21,82.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5155 >> Turn in Forces of Jaedenar
    .accept 5157 >> Accept Collection of the Corrupt Water
    .target Greta Mosshoof
step
    .goto Felwood,51.350,81.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 4421 >> Turn in The Corruption of the Jadefire
    .accept 4906 >> Accept Further Corruption
    .target Eridan Bluewind
step
    .goto Felwood,50.889,81.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .accept 5156 >> Accept Verifying the Corruption
    .target Taronn Redfeather
step
    .goto Felwood,38.55,59.14,50,0
    .goto Felwood,35.173,59.778
    .use 12922 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Canteen] |cRXP_WARN_at the Moon Well in the center of Jaedenar|r
    .complete 5157,1 
step
    >>Kill |cRXP_ENEMY_Entropic Beasts|r and |cRXP_ENEMY_Entropic Horrors|r
    .complete 5156,1 
    .goto Felwood,41.535,43.007,50,0
    .goto Felwood,40.91,40.37,50,0
    .goto Felwood,42.84,37.62,60,0
    .goto Felwood,45.43,40.02,60,0
    .goto Felwood,41.10,41.06
    .complete 5156,2 
    .goto Felwood,41.535,43.007,50,0
    .goto Felwood,40.91,40.37,50,0
    .goto Felwood,42.84,37.62,60,0
    .goto Felwood,45.43,40.02,60,0
    .goto Felwood,41.10,41.06
    .complete 5156,3 
    .goto Felwood,41.535,43.007
    .mob Entropic Beast
    .mob Entropic Horror
step
    .isQuestTurnedIn 4421
    .goto Felwood,41.58,19.19,90,0
    .goto Felwood,38.98,22.31
    >>Kill |cRXP_ENEMY_Xavaric|r. Loot him for the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r]
    >>|cRXP_WARN_Use the |T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r] to start the quest|r
    .complete 4906,4 
    .collect 11668,1,939,1 
    .accept 939 >> Accept Flute of Xavaric
    .use 11668 
    .mob Xavaric
step
    .isQuestTurnedIn 4421
    .goto Felwood,38.98,22.31,70,0
    .goto Felwood,43.44,14.47,70,0
    .goto Felwood,38.98,22.31,70,0
    .goto Felwood,38.98,22.31
    >>Kill |cRXP_ENEMY_Jadefire Hellcallers|r, |cRXP_ENEMY_Jadefire Betrayers|r and |cRXP_ENEMY_Jadefire Trickster|r. Loot them for their |cRXP_LOOT_Jadefire Felbinds|r
    .complete 4906,1 
    .complete 4906,2 
    .complete 4906,3 
    .complete 939,1 
    .mob Jadefire Hellcaller slain (8)
    .mob Jadefire Betrayer slain (8)
    .mob Jadefire Trickster slain (8)
step << Warlock
    .isOnQuest 8421
    .goto Felwood,49.0,29.6,70,0
    .goto Felwood,53.0,22.8,70,0
    .goto Felwood,49.4,18.0,70,0
    .goto Felwood,46.4,24.6,70,0
    .goto Felwood,49.0,29.6,70,0
    .goto Felwood,53.0,22.8,70,0
    .goto Felwood,49.4,18.0,70,0
    .goto Felwood,46.4,24.6
    >>Kill |cRXP_ENEMY_Irontree Stompers|r, |cRXP_ENEMY_Irontree Wanderers|r and |cRXP_ENEMY_Withered Protectors|r. Loot them for their |cRXP_LOOT_Rotting Wood|r
    .complete 8421,1 
    .mob Irontree Stomper
    .mob Irontree Wanderer
    .mob Withered Protector
step
    .goto Felwood,57.30,17.79
    >>Kill |cRXP_ENEMY_Warpwood Moss Flayers|r and |cRXP_ENEMY_Warpwood Shredders|r. Loot them for their |cRXP_LOOT_Blood Ambers|r
    .complete 4101,1 
    .mob Warpwood Moss Flayer
    .mob Warpwood Shredder
step
    .goto Felwood,62.488,24.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishellena|r
    .fp Felwood>> Get the Felwood Flight Path
    .target Mishellena
step
    .goto Felwood,64.768,8.129
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 8462 >> Turn in Speak to Nafien
    .target Nafien
step
    #completewith next
    .goto Felwood,65.280,7.515,20,0
    .goto Felwood,65.280,7.515,0
    .goto Winterspring,27.76,34.59
    .zone Winterspring >> Travel to Winterspring via Timbermaw Hold
    >>|cRXP_WARN_If you are not Unfriendly with Timbermaw Hold, |cRXP_ENEMY_Furbolgs|r will attack you|r
step
    .isOnQuest 3908
    .goto Winterspring,31.269,45.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 3908 >> Turn in It's a Secret to Everybody
    .timer 36,It's a Secret to Everybody RP
    .target Donova Snowden
step
    .goto Winterspring,31.269,45.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .accept 3909 >> Accept The Videre Elixir
    .target Donova Snowden
step
    .isOnQuest 978
    .goto Winterspring,32.8,44.3,70,0
    .goto Winterspring,37.4,44.2,70,0
    .goto Winterspring,40.5,37.5,70,0
    .goto Winterspring,43.6,42.6,70,0
    .goto Winterspring,45.9,41.6,70,0
    .goto Winterspring,47.9,45.1,70,0
    .goto Winterspring,50.5,38.0,70,0
    .goto Winterspring,60.6,33.7
    >>Loot |cRXP_LOOT_Moontouched Feathers|r on the ground
    .complete 978,1
step
    .goto Winterspring,62.334,36.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maethrya|r
    .fp Winterspring >> Get the Winterspring Flight Path
    .fly Felwood >> Fly to Felwood
    .target Maethrya
step << Warlock
    .isQuestComplete 8421
    .goto Felwood,41.52,44.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .turnin 8421 >> Turn in The Wrong Stuff
    .target Impsy
step << Warlock
    .goto Felwood,41.52,44.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .accept 8422 >> Accept Trolls of a Feather
    .target Impsy
step
    .goto Felwood,51.21,82.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5157 >> Turn in Collection of the Corrupt Water
    .accept 5158 >> Accept Seeking Spiritual Aid
    .target Greta Mosshoof
step
    .goto Felwood,51.350,81.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 4906 >> Turn in Further Corruption
    .turnin 939 >> Turn in Flute of Xavaric
    .accept 4441 >> Accept Felbound Ancients
    .target Eridan Bluewind
step
    .goto Felwood,50.889,81.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .turnin 5156 >> Turn in Verifying the Corruption
    .target Taronn Redfeather
step
    .goto Felwood,54.14,86.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
    .turnin 4101 >> Turn in Cleansing Felwood
    .target Arathandris Silversky
step
    .isQuestTurnedIn 4101
    .goto Felwood,54.14,86.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
    >>|cRXP_WARN_Select the option:|r "I need a Cenarion beacon."
    .collect 11511,1 
    .target Arathandris Silversky
step
    .hs >> Hearth to Darkshore
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    #completewith Turnin978
    .isQuestComplete 978
    +If you have completed Moontouched Wildkin, fly to Teldrassil now and turn it in, otherwise abaondon the quest. You will complete it later
step
    .isQuestComplete 978
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Caylais Moonfeather
step
    #label Turnin978
    .isQuestComplete 978
    .goto Teldrassil,55.497,92.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
    >>|cRXP_WARN_Do not accept the follow up|r
    .turnin 978 >> Turn in Moontouched Wildkin
    .target Erelas Ambersky
step
    #completewith CSS
    >>Loot |cRXP_LOOT_Corrupted Soul Shards|r from any Mobs in Felwood
    >>Grind your way down south until you have 6
    .collect 11515,6,5882,1 
    .itemcount 11511,1 
step
    .goto Felwood,51.350,81.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 4441 >> Turn in Felbound Ancients
    .timer 16,Felbound Ancients RP
    .target Eridan Bluewind
step
    .goto Felwood,51.21,82.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5159 >> Turn in Cleansed Water Returns to Felwood
    .accept 5165 >> Accept Dousing the Flames of Protection
    .target Greta Mosshoof
step
    #label CSS
    .goto Felwood,51.350,81.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    >>|cRXP_WARN_You may need to wait for the RP|r
    .accept 4442 >> Accept Purified!
    .turnin 4442 >> Turn in Purified!
    .target Eridan Bluewind
step
    .goto Felwood,48.22,93.81,0
    .goto Felwood,54.14,86.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathandris Silversky|r
    >>|cRXP_WARN_Turn in your 6|r |T132884:0|t[|cRXP_LOOT_Corrupted Soul Shards|r] |cRXP_WARN_you have to receive 2|r |T132804:0|t[|cRXP_LOOT_Cenarion Plant Salves|r]
    >>If you don't have 6 get them from the |cRXP_ENEMY_Furbolgs|r to the west
    .collect 11515,6,5882,1 
    .accept 5882 >> Accept Salve via Hunting
    .turnin 5882 >> Turn in Salve via Hunting
    .target Arathandris Silversky
    .zoneskip Felwood,1
    .mob Deadwood Warrior
    .mob Deadwood Pathfinder
    .mob Deadwood Gardener
step
    #completewith next
    #icon |T135934:0|t
    .goto Felwood,55.808,10.438,0
    .goto Felwood,50.575,13.918,0
    .goto Felwood,63.336,22.610,0
    .goto Felwood,40.142,44.353,0
    .goto Felwood,40.142,56.523,0
    .goto Felwood,48.260,75.650,0
    .goto Felwood,45.942,85.219,0
    .goto Felwood,52.893,87.825,0
    .goto Felwood,52.893,87.825,25,0
    .goto Felwood,45.942,85.219,25,0
    .goto Felwood,48.260,75.650,25,0
    .goto Felwood,40.142,56.523,25,0
    .goto Felwood,40.142,44.353,25,0
    .goto Felwood,50.575,13.918,25,0
    .goto Felwood,55.808,10.438,25,0
    .goto Felwood,63.336,22.610,25,0
    .cast 6478 >> |cRXP_WARN_Look for a |cRXP_PICK_Corrupted Songflower|r. Click it to cleanse it. Click the |cRXP_PICK_Cleansed Songflower|r to receive the hour-long|r |T135934:0|t[Songflower Serenade] |cRXP_WARN_buff|r
    >>|cRXP_WARN_Their locations have been marked on your map. Skip this step if you aren't able to find one|r
    .itemcount 11516,2 
step
    #completewith eStart
    .goto Felwood,35.367,58.376
    .subzone 1770 >> Travel to Shadow Hold
step
    #completewith next
    >>Click the four |cRXP_PICK_Braziers|r on the ground
    .complete 5165,1 
    .goto Felwood,36.267,56.297
    .complete 5165,4 
    .goto Felwood,36.484,55.183
    .complete 5165,3 
    .goto Felwood,36.732,53.262
    .complete 5165,2 
    .goto Felwood,37.677,52.685
step
    >>Kill |cRXP_ENEMY_Jaedenar Enforcers|r, |cRXP_ENEMY_Jaedenar Darkweavers|r, |cRXP_ENEMY_Jaedenar Warlocks|r and |cRXP_ENEMY_Jaedenar Legionnaires|r. Loot them for a |T134235:0|t[|cRXP_LOOT_Blood Red Key|r]
    >>|cRXP_WARN_Use the |T134235:0|t[|cRXP_LOOT_Blood Red Key|r] to start the quest|r
    >>|cRXP_WARN_This will begin an escort quest. Start this escort even if you still need to Extinguish Braziers|r
    .collect 13140,1,5202,1 
    .accept 5202 >> Accept A Strange Red Key
    .use 13140 
    .mob Jaedenar Enforcer
    .mob Jaedenar Darkweaver
    .mob Jaedenar Warlock
    .mob Jaedenar Legionnaire
step
    #label eStart
    .goto Felwood,36.207,55.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Arko'narin|r
    .turnin 5202 >> Turn in A Strange Red Key
    .accept 5203,1 >> Accept Rescue From Jaedenar
    .target Captured Arko'narin
step
    #completewith next
    >>Click the four |cRXP_PICK_Braziers|r on the ground
    .complete 5165,1 
    .goto Felwood,36.267,56.297
    .complete 5165,4 
    .goto Felwood,36.484,55.183
    .complete 5165,3 
    .goto Felwood,36.732,53.262
    .complete 5165,2 
    .goto Felwood,37.677,52.685
step
    .goto Felwood,35.44,59.01
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Arko'narin|r through Shadow Hold. Once you approach the final |cRXP_PICK_Brazier|r, 3 |cRXP_ENEMY_Felguards|r will spawn which you will have to deal with|r
    >>|cRXP_WARN_After exiting Shadow Hold, you will need to kill the |cRXP_ENEMY_Spirit of Trey Lightforge|r. Let |cRXP_FRIENDLY_Arko'narin|r tank him as much as possible|r
    .complete 5203,1 
    .target Arko'narin
    .mob Spirit of Trey Lightforge
step
    >>Click the four |cRXP_PICK_Braziers|r on the ground
    .complete 5165,1 
    .goto Felwood,36.267,56.297
    .complete 5165,4 
    .goto Felwood,36.484,55.183
    .complete 5165,3 
    .goto Felwood,36.732,53.262
    .complete 5165,2 
    .goto Felwood,37.677,52.685
step
    .goto Felwood,51.3,82.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 5165 >> Turn in Dousing the Flames of Protection
    .target Greta Mosshoof
    .accept 5242 >> Accept A Final Blow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 5203 >> Turn in Rescue From Jaedenar
    .target Jessir Moonbow
    .accept 5204 >> Accept Retribution of the Light
step
    .goto Felwood,38.499,50.414
    >>Go deep into the Shadow Hold. Kill |cRXP_ENEMY_Rakaiah|r
    .complete 5204,1 
step
    .goto Felwood,38.499,50.414
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remains of Trey Lightforge|r
    .turnin 5204 >> Turn in Retribution of the Light
    .target Remains of Trey Lightforge
    .accept 5385 >> Accept The Remains of Trey Lightforge
step
    .goto Felwood,38.9,46.8
    >>Dive deeper into the Shadow Hold. Kill |cRXP_ENEMY_Moora|r and |cRXP_ENEMY_Salia|r. Kill |cRXP_LOOT_Fel'dan|r and loot him for his |cRXP_LOOT_Head|r
    .complete 5242,1 
    .complete 5242,2 
    .complete 5242,3
step
    #sticky
    #label Droplets
    .goto Felwood,50.0,24.7,0
    >>Kill |cRXP_ENEMY_Water elementals|r for |cRXP_LOOT_Toxic Horror Droplets|r
    .complete 5086,1 
    .isOnQuest 5086
step
    #completewith next
    .goto Felwood,49.55,29.71,150 >> Travel to the Felwood graveyard
step
    .goto Felwood,49.647,30.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arei|r
    >>|cRXP_WARN_Use the|r |T133942:0|t[Flute of the Ancients] |cRXP_WARN_once you are at the graveyard to summon|r |cRXP_FRIENDLY_Arei|r
    .accept 4261 >> Accept Ancient Spirit
    .target Arei
    .use 11445
    .itemcount 11445,1 
step
    .isOnQuest 4261
    >>Escort |cRXP_FRIENDLY_Arei|r to the road north. He will be attacked a few times along the way
    .complete 4261,1 
    .target Arei
step
    #completewith next
    .goto Felwood,65.48,3.47,20 >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Kernda|r
step
    .goto Felwood,65.48,3.47,20,0
    .goto Felwood,65.35,1.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernda|r
    >>|cRXP_FRIENDLY_Kernda|r |cRXP_WARN_patrols the lower Timbermaw Hold path|r
    .use 20741 >>|cRXP_WARN_Use the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r] to start the quest|r
    >>Skip this step if you aren't neutral with Timbermaw Hold
    .accept 8470 >> Accept Deadwood Ritual Totem
    .turnin 8470 >> Turn in Deadwood Ritual Totem
    .reputation 576,neutral,<0,1 
    .itemcount 20741,1 
    .target Kernda
step
    .goto Felwood,65.692,2.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meilosh|r
    >>Skip this step if you aren't friendly with Timbermaw Hold
    .accept 6031 >> Accept Runecloth
    .turnin 6031 >> Turn in Runecloth
    .reputation 576,friendly,<0,1 
    .itemcount 14047,30 
    .target Meilosh
step
    #completewith next
    .goto Winterspring,27.736,34.499,20 >> Travel through Timbermaw Hold to |cRXP_FRIENDLY_Salfa|r in Winterspring
step
    .goto Winterspring,27.736,34.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
    .turnin 8465 >> Turn in Speak to Salfa
    .target Salfa
    .isOnQuest 8465
step
    .goto Winterspring,31.269,45.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 980 >> Turn in The New Springs
    .accept 4842 >> Accept Strange Sources
    .accept 5082 >> Accept Threat of the Winterfall
    .target Donova Snowden
step
    #sticky
    #label furbolgs
    .goto Winterspring,32.4,37.6,0
    .goto Winterspring,30.6,35.8,70,0
    .goto Winterspring,33.6,36.8,70,0
    .goto Winterspring,39.4,43.8,70,0
    .goto Winterspring,41.6,42.8
    >>Kill |cRXP_ENEMY_Winterfall Pathfinders|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Totemics|r
    .complete 5082,1 
    .complete 5082,2 
    .complete 5082,3 
    .mob Winterfall Pathfinder
    .mob Winterfall Den Watcher
    .mob Winterfall Totemic
step
    >>Kill |cRXP_ENEMY_Winterfall Furbolgs|r. Loot them for a |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r]
    .use 12771 >>|cRXP_WARN_Use the |T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r] to start the quest|r
    .collect 12771,1,5083,1 
    .accept 5083 >> Accept Winterfall Firewater
step
    #requires furbolgs
    .goto Winterspring,31.269,45.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    >>|cRXP_WARN_Be ready to move away from |cRXP_FRIENDLY_Donova Snowden|r quickly as after you turn in Winterfall Runners, 3 |cRXP_ENEMY_Winterfall Ambushers|r will attack her location|r
    .turnin 5082 >> Turn in Threat of the Winterfall
    .turnin 5083 >> Turn in Winterfall Firewater
    .accept 5084 >> Accept Falling to Corruption
    .target Donova Snowden
step
    #completewith next
    .zone Felwood >> Run back to Felwood
step
    .goto Felwood,64.769,8.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .accept 8461 >> Accept Deadwood of the North
    .target Nafien
step
    #sticky
    #completewith next
    .goto Felwood,62.61,10.12,70,0
    .goto Felwood,62.73,7.31,70,0
    .goto Felwood,61.33,7.46,70,0
    .goto Felwood,59.79,5.92,70,0
    >>Kill |cRXP_ENEMY_Deadwood Den Watchers|r, |cRXP_ENEMY_Deadwood Den Avengers|r and |cRXP_ENEMY_Deadwood Den Shamans|r
    >>|cRXP_WARN_If you find the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r], don't start the quest from this item yet|r
    .complete 8461,1 
    .complete 8461,2 
    .complete 8461,3 
    .mob Deadwood Den Watcher
    .mob Deadwood Avenger
    .mob Deadwood Shaman
step
    .goto Felwood,60.204,5.841
    >>Click the |cRXP_PICK_Deadwood Cauldron|r in the northern |cRXP_ENEMY_Furbolg|r camp
    >>|cRXP_WARN_If you create an escape path, you can simply click the |cRXP_PICK_Deadwood Cauldron|r and then run away. You don't need to kill all surrounding|r |cRXP_ENEMY_Furbolgs|r
    .turnin 5084 >> Turn in Falling to Corruption
    .accept 5085 >> Accept Mystery Goo
step
    .goto Felwood,62.61,10.12,70,0
    .goto Felwood,62.73,7.31,70,0
    .goto Felwood,61.33,7.46,70,0
    .goto Felwood,59.79,5.92,70,0
    .goto Felwood,62.61,10.12
    >>Kill |cRXP_ENEMY_Deadwood Den Watchers|r, |cRXP_ENEMY_Deadwood Den Avengers|r and |cRXP_ENEMY_Deadwood Den Shamans|r
    >>|cRXP_WARN_If you find the |T136232:0|t[|cRXP_LOOT_Deadwood Ritual Totem|r], don't start the quest from this item yet|r
    .complete 8461,1 
    .complete 8461,2 
    .complete 8461,3 
    .mob Deadwood Den Watcher
    .mob Deadwood Avenger
    .mob Deadwood Shaman
step
    #label DeadwoodEnd
    #requires OrbScroll << Mage
    .goto Felwood,64.769,8.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 8461 >> Turn in Deadwood of the North
    .accept 8465 >> Accept Speak to Salfa
    .target Nafien
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    >>|cRXP_WARN_If you have more than 5|r |T132926:0|t[Deadwood Headdress Feathers] |cRXP_WARN_you may turn them in for reputation with Timbermaw Hold|r
    .dailyturnin 8467 >> Turn in Feathers for Nafien
    .itemcount 21377,>5 
    .target Nafien
step
    #completewith next
    .zone Felwood >> Run back to |cRXP_FRIENDLY_Donova|r in Winterspring
step
    .goto Winterspring,31.269,45.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5085 >> Turn in Mystery Goo
    .accept 5086 >> Accept Toxic Horrors
    .target Donova Snowden
step
    #completewith next
    .zone Felwood >> Run back to Felwood
step
    #label HorrorDropletEnd
    .goto Felwood,50.6,22.4,70,0
    .goto Felwood,49.6,26.6,70,0
    .goto Felwood,48.0,24.0,70,0
    .goto Felwood,49.6,26.6
    >>Kill |cRXP_ENEMY_Toxic Horrors|r. Loot them for their |cRXP_LOOT_Toxic Horror Droplets|r
    .complete 5086,1 
    .mob Toxic Horror
step
    #completewith next
    #requires UnusualFlask << Mage
    .goto Felwood,65.280,7.515,20,0
    .goto Felwood,65.280,7.515,0
    .goto Winterspring,27.76,34.59
    .zone Winterspring >> Travel to Winterspring via Timbermaw Hold
step
    .goto Winterspring,31.269,45.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 5082 >> Turn in Threat of the Winterfall << Hunter
    .turnin 5086 >> Turn in Toxic Horrors
    .accept 5087 >> Accept Winterfall Runners
    .target Donova Snowden
step
    #sticky
    #completewith end
    >>Kill the |cRXP_ENEMY_Winterfall Runners|r. Loot them for their |cRXP_LOOT_Winterfall Crate|r
    >>|cRXP_WARN_Their spawn point is on the west side of Winterspring near the Timbermaw tunnel. Their patrol route is marked on your map|r
    >>|cRXP_WARN_You may complete this later if you can't find them now|r
    .complete 5087,1 
    .line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
    .unitscan Winterfall Runner
step
    .goto Winterspring,32.8,44.3,70,0
    .goto Winterspring,37.4,44.2,70,0
    .goto Winterspring,40.5,37.5,70,0
    .goto Winterspring,43.6,42.6,70,0
    .goto Winterspring,45.9,41.6,70,0
    .goto Winterspring,47.9,45.1,70,0
    .goto Winterspring,50.5,38.0,70,0
    .goto Winterspring,60.6,33.7
    >>Loot |cRXP_LOOT_Moontouched Feathers|r on the ground
    .complete 978,1
    .isOnQuest 978
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r and |cRXP_FRIENDLY_Jaron Stoneshaper|r
    .turnin 5250 >> Turn in Starfall
    .accept 5244 >> Accept The Ruins of Kel'Theril
    .goto Winterspring,51.971,30.387
    .turnin 5244 >> Turn in The Ruins of Kel'Theril
    .accept 5245 >> Accept Troubled Spirits of Kel'Theril
    .accept 4861 >> Accept Enraged Wildkin
    .goto Winterspring,52.139,30.429
    .target Wynd Nightchaser
    .target Jaron Stoneshaper
step
    #label end
    >>Click the |cRXP_PICK_Highborne Relic Fragments|r on the ground
    .complete 5245,2
    .goto Winterspring,50.88,41.71
    .complete 5245,4
    .goto Winterspring,52.42,41.50
    .complete 5245,3
    .goto Winterspring,53.30,43.43
    .complete 5245,1
    .goto Winterspring,55.13,42.98
step
    .turnin 4512
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
    .goto The Barrens,62.639,37.421,-1
    .goto The Barrens,62.680,37.395,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
    .bankdeposit 11682,11511,11947,11949 >> Deposit the following items into your bank:
    >>|T134870:0|t[Eridan's Vial] 
    >>|T134249:0|t[Cenarion Beacon] 
    >>|T134815:0|t[Filled Cursed Ooze Jar] 
    >>|T134857:0|t[Filled Tainted Ooze Jar] 
    .target Fuzruckle
    .target Zikkel
step
    .goto The Barrens,62.639,37.421,-1
    .goto The Barrens,62.680,37.395,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
    .bankwithdraw 10445,10444 >> Withdraw the following items from your bank:
    >>|T134537:0|t[Standard Issue Flare Gun] 
    >>|T132594:0|t[Drawing Kit] 
    .target Fuzruckle
    .target Zikkel
step
    #optional
    .isQuestTurnedIn 2662
    .goto The Barrens,62.639,37.421,-1
    .goto The Barrens,62.680,37.395,-1
    >>Take out any |T134863:0|t[Noggenfogger Elixirs] from your bank if you have any. Ideally 15-20 or so. You will use them for a quest later. It's no big deal if you don't have them
    .collect 8529,20 
    .target Fuzruckle
    .target Zikkel
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    .home >> Set your Hearthstone to Ratchet
    .target Innkeeper Wiley
step
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Azshara >> Fly to Azshara
    .target Bragok
step << Mage
    #completewith next
    .goto Azshara,28.113,50.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
    >>|cRXP_WARN_This will teleport you to the top of the mountain|r
    .turnin 3503 >> Turn in Meeting with the Master
    .target Sanath Lim-yo
step << Mage
    .goto Azshara,29.248,40.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
    .accept 8251 >> Accept Magic Dust
    .target Archmage Xylem
step << Mage
    #completewith KJI
    .goto Azshara,26.466,46.271
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
    >>|cRXP_WARN_This will teleport you back down|r
    .turnin 3421 >> Turn in Return Trip
    .timer 8,Return Trip RP
    .target Nyrill
step << Hunter
    .isOnQuest 8151
    .goto Azshara,42.400,42.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8151 >> Turn in The Hunter's Charm
    .target Ogtinc
step << Hunter/Priest
    .goto Azshara,42.400,42.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8153 >> Accept Courser Antlers << Hunter
    .accept 8255 >> Accept Of Coursers We Know << Priest
    .target Ogtinc
step << Hunter/Priest
    #completewith Missing
    >>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Perfect Courser Antlers|r << Hunter
    >>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Healthy Courser Glands|r << Priest
    .complete 8153,1 << Hunter 
    .complete 8255,1 << Priest 
    .mob Mosshoof Courser
step << Rogue
    #phase 4-6
    .goto Azshara,48.42,30.29,70,0
    .goto Azshara,44.34,26.09,70,0
    .goto Azshara,45.26,21.60
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Timbermaw Shamans|r. Loot them for the |cRXP_LOOT_Sealed Azure Bag|r
    >>|cRXP_WARN_You may have to tick the [At War] checkbox for [Timbermaw Hold] in your Reputation pane to make them hostile towards you|r
    .complete 8234,1 
    .mob Timbermaw Shaman
step
    #label KJI
    .goto Azshara,53.452,21.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
    .accept 3601 >> Accept Kim'jael Indeed!
    .target Kim'jael
step << Mage
    #phase 4-6
    #completewith next
    >>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r. Loot them for their |cRXP_LOOT_Glittering Dust|r
    .complete 8251,1 
    .mob Blood Elf Reclaimer
    .mob Blood Elf Surveyor
step
    .goto Azshara,55.97,29.98,30,0
    .goto Azshara,56.55,28.36,30,0
    .goto Azshara,57.71,31.13,50,0
    .goto Azshara,59.17,31.93,40,0
    .goto Azshara,58.96,28.23,30,0
    .goto Azshara,56.55,28.36
    >>Open the |cRXP_PICK_Kim'jael's Equipment|r. Loot it for |cRXP_LOOT_Kim'Jael's Compass|r, |cRXP_LOOT_Kim'Jael's Scope|r, |cRXP_LOOT_Kim'Jael's Stuffed Chicken|r and |cRXP_LOOT_Kim'Jael's Wizzlegoober|r
    >>|cRXP_PICK_Kim'jael's Equipment|r |cRXP_WARN_boxes are scattered throughout the |cRXP_ENEMY_Blood Elf|r camp|r
    .complete 3601,1 
    .complete 3601,2 
    .complete 3601,3 
    .complete 3601,4 
step << Mage
    #phase 4-6
    .goto Azshara,55.97,29.98,30,0
    .goto Azshara,56.55,28.36,30,0
    .goto Azshara,57.71,31.13,50,0
    .goto Azshara,59.17,31.93,40,0
    .goto Azshara,58.96,28.23,30,0
    .goto Azshara,56.55,28.36
    >>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r and |cRXP_ENEMY_Blood Elf Surveyors|r. Loot them for their |cRXP_LOOT_Glittering Dust|r
    .complete 8251,1 
    .mob Blood Elf Reclaimer
    .mob Blood Elf Surveyor
step
    .goto Azshara,53.452,21.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 3601 >> Turn in Kim'jael Indeed!
    .accept 5534 >> Accept Kim'jael's "Missing" Equipment
    .target Kim'jael
step << Mage/Rogue
    #phase 4-6
    #completewith next
    .goto Azshara,28.113,50.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
    >>|cRXP_WARN_This will teleport you to the top of the mountain|r
    .turnin 3503 >> Turn in Meeting with the Master
    .target Sanath Lim-yo
step << Mage/Rogue
    #phase 4-6
    .goto Azshara,29.248,40.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
    .turnin 8251 >> Turn in Magic Dust << Mage
    .accept 8252 >> Accept The Siren's Coral << Mage
    .turnin 8234 >> Turn in Sealed Azure Bag << Rogue
    .accept 8235 >> Accept Encoded Fragments << Rogue
    .target Archmage Xylem
step << Rogue
    .isQuestTurnedIn 8234
    #completewith next
    +|cRXP_WARN_Ensure you have to unticked the [At War] checkbox for [Timbermaw Hold] in your Reputation pane to make them non-hostile towards you again|r
step << Mage/Rogue
    #completewith RuneRubbing
    .goto Azshara,26.466,46.271
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
    >>|cRXP_WARN_This will teleport you back down|r
    .turnin 3421 >> Turn in Return Trip
    .timer 8,Return Trip RP
    .target Nyrill
step << Mage
    #completewith RuneRubbing
    >>Kill |cRXP_ENEMY_Spitelash Siren|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
    .complete 8252,1 
    .mob Spitelash Siren
step
    #completewith RuneRubbing
    >>|cRXP_ENEMY_Spitelash Myrmidons|r and |cRXP_ENEMY_Spitelash Siren|r. Loot them for |cRXP_LOOT_Some Rune|r
    .complete 5534,1 
    .mob Spitelash Myrmidon
    .mob Spitelash Siren
step
    #label RuneRubbing
    >>Click the |cRXP_PICK_Runes|r. Loot them for the |cRXP_LOOT_Rubbings|r
    .complete 3449,2 
    .goto Azshara,39.57,50.32
    .complete 3449,1 
    .goto Azshara,36.95,53.18
    .complete 3449,3 
    .goto Azshara,39.33,55.42
    .complete 3449,4 
    .goto Azshara,42.34,64.14
step << Mage
    #completewith next
    >>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
    .complete 8252,1 
    .mob Spitelash Siren
step
    .goto Azshara,43.0,45.6,70,0
    .goto Azshara,47.0,41.6,70,0
    .goto Azshara,47.4,65.0,70,0
    .goto Azshara,46.0,52.8
    >>|cRXP_ENEMY_Spitelash Myrmidons|r and |cRXP_ENEMY_Spitelash Sirens|r. Loot them for |cRXP_LOOT_Some Rune|r
    .complete 5534,1 
    .mob Spitelash Myrmidon
    .mob Spitelash Siren
step << Mage
    .dungeon ST
    #phase 4-6
    .goto Azshara,43.0,45.6,70,0
    .goto Azshara,47.0,41.6,70,0
    .goto Azshara,47.4,65.0,70,0
    .goto Azshara,46.0,52.8
    >>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for their |cRXP_LOOT_Enchanted Corals|r
    .complete 8252,1 
    .mob Spitelash Siren
step
    #label Missing
    .goto Azshara,53.452,21.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >> Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
step << Rogue
    .goto Azshara,66.6,25.6,70,0
    .goto Azshara,68.8,29.4,70,0
    .goto Azshara,74.2,29.6,70,0
    .goto Azshara,76.6,25.0,70,0
    .goto Azshara,80.8,24.6,70,0
    .goto Azshara,86.6,19.6,70,0
    .goto Azshara,74.6,12.6,70,0
    .goto Azshara,69.0,27.6
    >>Kill |cRXP_ENEMY_Forest Oozes|r. Loot them for their |cRXP_LOOT_Encoded Fragments|r
    >>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on them before you kill them|r
    .complete 8235,1 
    .mob Forest Ooze
step << Mage/Rogue
    #completewith next
    .goto Azshara,28.113,50.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
    >>|cRXP_WARN_This will teleport you to the top of the mountain|r
    .turnin 3503 >> Turn in Meeting with the Master
    .target Sanath Lim-yo
step << Mage/Rogue
    .goto Azshara,29.248,40.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
    .turnin 8252 >> Turn in The Siren's Coral << Mage
    .turnin 8235 >> Turn in Encoded Fragments << Rogue
    .target Archmage Xylem
step << Mage/Rogue
    .goto Azshara,29.248,40.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r atop the Tower
    .accept 8253 >> Accept Destroy Morphaz << Mage
    .accept 8236 >> Accept The Azure Key << Rogue
    .target Archmage Xylem
step << Mage/Rogue
    #completewith ArcaneRunes
    .goto Azshara,26.466,46.271
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrill|r
    >>|cRXP_WARN_This will teleport you back down|r
    .turnin 3421 >> Turn in Return Trip
    .timer 8,Return Trip RP
    .target Nyrill
step << Hunter/Priest
    .goto Azshara,51.0,30.8,80,0
    .goto Azshara,47.0,19.0,80,0
    .goto Azshara,57.2,21.2,80,0
    .goto Azshara,71.0,29.6,80,0
    .goto Azshara,75.8,21.8,80,0
    .goto Azshara,57.2,21.2
    >>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Perfect Courser Antlers|r << Hunter
    >>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for their |cRXP_LOOT_Healthy Courser Glands|r << Priest
    .complete 8153,1 << Hunter 
    .complete 8255,1 << Priest 
    .mob Mosshoof Courser
step << Hunter/Priest
    .goto Azshara,42.400,42.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8153 >> Turn in Courser Antlers << Hunter
    .accept 8231 >> Accept Wavethrashing << Hunter
    .turnin 8255 >> Turn in Of Coursers We Know << Priest
    .accept 8256 >> Accept The Ichor of Undeath << Priest
    .target Ogtinc
step << Hunter/Priest
    .goto Azshara,42.400,42.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8153 >> Turn in Courser Antlers << Hunter
    .turnin 8255 >> Turn in Of Coursers We Know << Priest
    .target Ogtinc
step << Hunter
    .goto Azshara,88.69,25.88,70,0
    .goto Azshara,87.0,9.0
    .goto Azshara,54.2,42.2,0
    .goto Azshara,59.2,35.6,0
    .goto Azshara,71.6,36.8,0
    .goto Azshara,90.4,33.6,0
    .goto Azshara,88.69,25.88,0
    >>Kill |cRXP_ENEMY_Wavethrashers|r. Loot them for their |cRXP_LOOT_Wavethrasher Scales|r
    >>|cRXP_WARN_These can be hard to find. Ensure to use|r |T132328:0|t[Track Beasts] |cRXP_WARN_and cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_around the coast to find them faster|r
    .complete 8231,1 
    .mob Wavethrasher
    .mob Young Wavethrasher
    .mob Great Wavethrasher
step << Priest
    .goto Azshara,17.12,69.00,60,0
    .goto Azshara,14.22,72.74,60,0
    .goto Azshara,17.12,69.00
    >>Kill |cRXP_ENEMY_Highborne Apparitions|r and |cRXP_ENEMY_Highborne Lichlings|r. Loot them for an |cRXP_LOOT_Ichor of Undeath|r
    .complete 8256,1 
    .mob Highborne Apparition
    .mob Highborne Lichling
step << Priest
    .goto Azshara,42.400,42.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8256 >> Turn in The Ichor of Undeath
    .target Ogtinc
step << Hunter/Priest
    .goto Azshara,42.400,42.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8231 >> Turn in Wavethrashing << Hunter
    .accept 8232 >> Accept The Green Drake << Hunter
    .accept 8257 >> Accept Blood of Morphaz << Priest
    .target Ogtinc
step
    #completewith ArcaneRunes
    .goto Azshara,62.817,81.843,0
    .goto Azshara,68.415,83.442,0
    .goto Azshara,74.022,87.468,0
    .goto Azshara,62.817,81.843,60,0
    .goto Azshara,68.415,83.442,60,0
    .goto Azshara,74.022,87.468,40,0
    .goto Azshara,77.800,91.327,60 >> Make your way to southern tip Azshara. Follow the arrow
step
    #completewith ArcaneRunes
    #optional
    .use 8529
    .cast 16589 >>|cRXP_WARN_Once you are at the top of the mountain, use any|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_you have to try and get the|r |T135992:0|t[Slow Fall] |cRXP_WARN_buff. This isn't required as you can still drop down safely without them. If you do get the buff mount up and jump toward the small island|r
    .itemcount 8529,1 
step
    #completewith next
    .cast 12283 >>|cRXP_WARN_Use the|r |T134537:0|t[Standard Issue Flare Gun] |cRXP_WARN_while on top of the Landing Pad and wait for |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r to arrive|r
    >>|cRXP_WARN_NOTE: It can take a few minutes for him to arrive! Wait patiently...|r
    .use 10444
step
    #label ArcaneRunes
    .goto Azshara,77.800,91.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r
    >>|cRXP_WARN_Wait patiently for him to arrive! It can take a few minutes|r
    .turnin 3449 >> Turn in Arcane Runes
    .accept 3461 >> Accept Return to Tymor
    .target Pilot Xiggs Fuselighter
step
    .destroy 10444 >> Destroy the |T134537:0|t[Standard Issue Flare Gun]
step << Mage
    #completewith next
    .zone Ironforge >>Teleport to Ironforge
    .xp <54,1
step << Mage
    .goto Ironforge,27.169,8.579
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
    .xp <54,1
step << Druid
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step
    .hs >> Hearth to Ratchet
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto The Barrens,65.827,43.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
    .turnin 5158 >> Turn in Seeking Spiritual Aid
    .timer 48,Seeking Spiritual Aid RP
    .accept 5159 >> Accept Cleansed Water Returns to Felwood
    .target Islen Waterseer
step
    .goto The Barrens,65.827,43.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen Waterseer|r
    .accept 5159 >> Accept Cleansed Water Returns to Felwood
    .target Islen Waterseer
step
    .goto The Barrens,62.448,38.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv Rizzlefix|r
    .accept 4502 >> Accept Volcanic Activity
    .target Liv Rizzlefix
step
    .goto The Barrens,62.500,38.546
    >>Open |cRXP_PICK_Marvon's Chest|r. Loot it for the |cRXP_LOOT_Stone Circle|r
    .complete 3444,1 
step
    .goto The Barrens,62.639,37.421,-1
    .goto The Barrens,62.680,37.395,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
    .bankwithdraw 11568,11569,11570,11830,11018,11114,11831 >> Withdraw the follwing items from your bank:
    >>|T133635:0|t[Torwa's Pouch] 
    .target Fuzruckle
    .target Zikkel
step
    .goto The Barrens,62.639,37.421,-1
    .goto The Barrens,62.680,37.395,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
    .bankdeposit 10445,12906 >> Deposit the following items into your bank:
    >>|T134754:0|t[Purified Moonwell Water] 
    >>|T132594:0|t[Drawing Kit] 
    .target Fuzruckle
    .target Zikkel
step
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Tanaris>> Fly to Tanaris
    .target Bragok
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

step
    .accept 4136 >> Accept Ribbly Screwspigot
    .accept 4123 >> Accept The Heart of the Mountain
    .accept 7848 >> Accept Attunement to the Core
    .accept 4286 >> Accept The Good Stuff
    .accept 4126 >> Accept Hurley Blackbreath
    .accept 3802 >> Accept Dark Iron Legacy
    .accept 4024 >> Accept A Taste of Flame
    .accept 4263 >> Accept Incendius!
    .accept 4341 >> Accept Kharan Mighthammer
    .accept 4362 >> Accept The Fate of the Kingdom

step
    .turnin 4136 >> Turn in Ribbly Screwspigot
    .turnin 4123 >> Turn in The Heart of the Mountain
    .turnin 7848 >> Turn in Attunement to the Core
    .turnin 4286 >> Turn in The Good Stuff
    .turnin 4126 >> Turn in Hurley Blackbreath
    .turnin 3802 >> Turn in Dark Iron Legacy
    .turnin 4024 >> Turn in A Taste of Flame
    .turnin 4263 >> Turn in Incendius!
    .turnin 4341 >> Turn in Kharan Mighthammer
    .turnin 4362 >> Turn in The Fate of the Kingdom
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

step
    .accept 4862 >> Accept En-Ay-Es-Tee-Why
    .accept 4729 >> Accept Kibler's Exotic Pets
    .accept 4701 >> Accept Put Her Down
    .accept 4788 >> Accept The Final Tablets
    .accept 5081 >> Accept Maxwell's Mission
    .accept 5089 >> Accept General Drakkisath's Command
    .accept 5001 >> Accept Bijou's Belongings
    .accept 4866 >> Accept Mother's Milk
step
    .turnin 4862 >> Turn in En-Ay-Es-Tee-Why
    .turnin 4729 >> Turn in Kibler's Exotic Pets
    .turnin 4701 >> Turn in Put Her Down
    .turnin 4788 >> Turn in The Final Tablets
    .turnin 5081 >> Turn in Maxwell's Mission
    .turnin 5089 >> Turn in General Drakkisath's Command
    .turnin 5001 >> Turn in Bijou's Belongings
    .turnin 4866 >> Turn in Mother's Milk
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
    #completewith TravelWPL
    .goto Western Plaguelands,42.702,84.031
    .zone Western Plaguelands >> Travel to Western Plaguelands
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5092 >> Accept Clear the Way
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.967,83.546
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .turnin 6028 >> Turn in The Everlook Report
    .target Argent Officer Pureheart
step
    .goto Western Plaguelands,42.968,83.546
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .accept 5401 >> Accept Argent Dawn Commission
    .turnin 5401 >> Turn in Argent Dawn Commission
    .target Argent Officer Pureheart
step
    #completewith ADC
    .cast 17670 >> |cRXP_WARN_Equip the|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_to start collecting|r |T133447:0|t[Scourgestones]
    .use 12846
step
    .goto Western Plaguelands,48.91,80.84,70,0
    .goto Western Plaguelands,50.01,76.90
    >>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Slavering Ghouls|r
    .complete 5092,1 
    .complete 5092,2 
    .mob Skeletal Flayer
    .mob Slavering Ghoul
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5092 >> Turn in Clear the Way
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5215 >> Accept The Scourge Cauldrons
    .accept 5097 >> Accept All Along the Watchtowers
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5215 >> Turn in The Scourge Cauldrons
    .accept 5216 >> Accept Target: Felstone Field
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,37.015,57.145
    >>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for the |cRXP_LOOT_Felstone Field Cauldron Key|r
    >>|cRXP_ENEMY_Cauldron Lord Bilemaw|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
    .complete 5216,1 
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.194,56.860
    >>Click on the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5216 >> Turn in Target: Felstone Field
    .accept 5217 >> Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5217 >> Turn in Return to Chillwind Camp
    .accept 5219 >> Accept Target: Dalson's Tears
    .target High Priestess MacDonnell
step
    #label TravelWPL
    .goto Western Plaguelands,43.419,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .accept 5903 >> Accept A Plague Upon Thee
    .target Nathaniel Dumah
step
    .isQuestTurnedIn 6183
    .goto Western Plaguelands,43.607,84.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
    .turnin 6184 >> Turn in Flint Shadowmore
    .accept 6185 >> Accept The Eastern Plagues
    .target Flint Shadowmore
step
    #completewith next
    .abandon 5601 >> Abandon Sister Pamela if you have it. You cannot accept Little Pamela if you have the quest Sister Pamela. Little Pamela gives more XP
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene Redpath|r
    >>|cRXP_FRIENDLY_Marlene Redpath|r may also be upstairs
    .accept 5142 >> Accept Little Pamela
    .target Marlene Redpath
step
    #label ADC
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5097,4 
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    >>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
    .accept 4984 >> Accept The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    #completewith DalsonCauldron
    .goto Western Plaguelands,49.2,58.4,0
    .goto Western Plaguelands,51.6,47.6,0
    .goto Western Plaguelands,43.0,48.2,0
    .goto Western Plaguelands,43.4,57.8,0
    .goto Western Plaguelands,46.6,40.4,0
    >>Kill |cRXP_ENEMY_Diseased Wolves|r
    >>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Carrion Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Wolves|r to spawn|r
    .complete 4984,1 
    .unitscan Diseased Wolf
step
    .goto Western Plaguelands,47.796,50.671
    >>|cRXP_WARN_Enter the Dalson's Tears Barn|r
    >>Click |cRXP_PICK_Mrs. Dalson's Diary|r on the ground
    .accept 5058 >> Accept Mrs. Dalson Diary
    .turnin 5058 >> Turn in Mrs. Dalson Diary
step
    .goto Western Plaguelands,47.86,49.88,25,0
    .goto Western Plaguelands,48.48,51.56,25,0
    .goto Western Plaguelands,47.39,51.77,25,0
    .goto Western Plaguelands,46.64,49.21,25,0
    .goto Western Plaguelands,47.86,49.88
    >>Kill the |cRXP_LOOT_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Dalson Outhouse Key|r
    >>|cRXP_WARN_The |cRXP_LOOT_Wandering Skeleton|r patrols around the Dalson's Tear Barn and House|r
    .collect 12738,1,5060,1 
    .unitscan Wandering Skeleton
step
    #completewith next
    .goto Western Plaguelands,48.109,49.654
    >>Click the |cRXP_PICK_Outhouse|r to summon |cRXP_ENEMY_Farmer Dalson|r
    .turnin 5059 >> Turn in Locked Away
step
    .goto Western Plaguelands,48.115,49.814
    >>Kill |cRXP_ENEMY_Farmer Dalson|r. Loot him for the |cRXP_LOOT_Dalson Cabinet Key|r
    .collect 12739,1,5060,1 
    .mob Farmer Dalson
step
    .goto Western Plaguelands,47.353,49.626
    >>Click the |cRXP_PICK_Locked Cabinet|r up stairs in the house
    .turnin 5060 >> Turn in Locked Away
step
    .goto Western Plaguelands,46.156,52.427
    >>Kill |cRXP_ENEMY_Cauldron Lord Malvinious|r. Loot him for the |cRXP_LOOT_Dalson's Tears Cauldron Key|r
    >>|cRXP_ENEMY_Cauldron Lord Malvinious|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
    .complete 5219,1 
    .unitscan Cauldron Lord Malvinious
step
    #label DalsonCauldron
    .goto Western Plaguelands,46.176,52.009
    >>Click on the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5219 >> Turn in Target: Dalson's Tears
    .accept 5220 >> Accept Return to Chillwind Camp
step
    #completewith next
    .goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
    .isQuestTurnedIn 5022
    #label Better
    .goto Western Plaguelands,38.40,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r through the ground from the 1st floor
    .turnin 5050 >>Turn in Better Late Than Never
    .accept 5051 >>Accept Two Halves Become One
    .target Janice Felstone
step
    .goto Western Plaguelands,38.16,57.10,60,0
    .goto Western Plaguelands,36.34,58.23,60,0
    .goto Western Plaguelands,36.43,56.37,60,0
    .goto Western Plaguelands,38.16,57.10
    >>Kill the |cRXP_ENEMY_Jabbering Ghoul|r. Loot it for the |T133443:0|t[Good Luck Other-Half-Charm]
    >>|cRXP_WARN_He patrols around the Field|r
    .collect 12722,1,5051,1 
    .unitscan Jabbering Ghoul
step
    #completewith 2Halves1
    >>|cRXP_WARN_Use the|r |T133443:0|t[Good Luck Other-Half-Charm] |cRXP_WARN_to create the|r |cRXP_LOOT_Good Luck Charm|r
    .collect 12723,1,5051,1 
    .use 12722 
step
    #completewith next
    .goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
    #label 2Halves1
    .goto Western Plaguelands,38.40,54.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r through the ground from the 1st floor
    .turnin 5051 >>Turn in Two Halves Become One
    .target Janice Felstone
step
    .goto Western Plaguelands,49.2,58.4,0
    .goto Western Plaguelands,51.6,47.6,0
    .goto Western Plaguelands,43.0,48.2,0
    .goto Western Plaguelands,43.4,57.8,0
    .goto Western Plaguelands,49.2,58.4,70,0
    .goto Western Plaguelands,51.6,47.6,70,0
    .goto Western Plaguelands,43.0,48.2,70,0
    .goto Western Plaguelands,43.4,57.8,70,0
    .goto Western Plaguelands,46.6,40.4,70,0
    .goto Western Plaguelands,49.2,58.4,70,0
    .goto Western Plaguelands,51.6,47.6,70,0
    .goto Western Plaguelands,43.0,48.2,70,0
    .goto Western Plaguelands,43.4,57.8,70,0
    .goto Western Plaguelands,46.6,40.4
    >>Kill |cRXP_ENEMY_Diseased Wolves|r
    >>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Carrion Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Wolves|r to spawn|r
    .complete 4984,1 
    .unitscan Diseased Wolf
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5097,3 
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5097,2 
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Use the|r |T135432:0|t[Beacon Torch] |cRXP_WARN_next to the Tower entrance. You can do this without agroing the Elite |cRXP_ENEMY_Skeletal Warlord|r inside|r
    .complete 5097,1 
step
    #completewith next
    .subzone 3197 >> Travel to Chillwind Camp
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 5097 >> Turn in All Along the Watchtowers
    .target Commander Ashlam Valorfist
    .accept 5533 >> Accept Scholomance
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    >>|cRXP_WARN_Don't accept the follow up yet|r
    .turnin 5533 >> Turn in Scholomance
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .target High Priestess MacDonnell
    .turnin 5220 >> Turn in Return to Chillwind Camp
    .accept 5222 >> Accept Target: Writhing Haunt
step
    .isQuestTurnedIn 5097
    .destroy 12815 >> Delete the |T135432:0|t[Beacon Torch]
step
    .goto Western Plaguelands,53.021,66.052
    >>Kill |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for the |cRXP_LOOT_Writhing Haunt Cauldron Key|r
    >>|cRXP_ENEMY_Cauldron Lord Razarch|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
    >>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
    .complete 5222,1 
    .unitscan Cauldron Lord Razarch
step
    .goto Western Plaguelands,53.020,65.718
    >>Click on the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5222 >> Turn in Target: Writhing Haunt
    .accept 5223 >> Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    >>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
    .turnin 4984 >> Turn in The Wildlife Suffers Too
    .accept 4985 >> Accept The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    #completewith ArriveTirion
    .isOnQuest 4985
    >>Kill any |cRXP_ENEMY_Diseased Grizzlies|r you see en-route to Eastern Plaguelands
    >>|cRXP_WARN_It is important you kill any you see along the way, but you don't have to complete it now|r
    .complete 4985,1 
    .unitscan Diseased Grizzly
step
    #completewith next
    .goto Eastern Plaguelands,9.57,66.20
    .zone Eastern Plaguelands >> Travel to Eastern Plaguelands
step
    #label ArriveTirion
    .goto Eastern Plaguelands,7.530,43.635
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5542 >> Accept Demon Dogs
    .accept 5543 >> Accept Blood Tinged Skies
    .accept 5544 >> Accept Carrion Grubbage
    .target Tirion Fordring
step
    #completewith PamelaRedpath
    >>Kill |cRXP_ENEMY_Plaguebats|r
    >>Kill |cRXP_ENEMY_Plaguehound Runts|r
    >>Kill |cRXP_ENEMY_Carrion Grubs|r. Loot them for their |cRXP_LOOT_Worm Meat|r
    .complete 5543,1 
    .complete 5542,1 
    .complete 5544,1 
    .mob Plaguebat
    .mob Plaguehound Runt
    .mob Carrion Grub
step
    .isQuestTurnedIn 6183
    .goto Eastern Plaguelands,27.266,74.956
    >>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Fredo)|r
    .complete 6185,2 
step
    .isQuestTurnedIn 6183
    .goto Eastern Plaguelands,28.805,74.880
    >>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Turyen)|r
    .complete 6185,3 
step
    .isQuestTurnedIn 6183
    .goto Eastern Plaguelands,28.806,79.853
    >>Click the |cRXP_PICK_Mangled Human Remains|r on the ground. Loot it for the |cRXP_LOOT_SI:7 Insignia (Rutger)|r
    .complete 6185,1 
step
    .isOnQuest 5601
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5601 >> Turn in Sister Pamela
    .accept 5149 >> Accept Pamela's Doll
    .target Pamela Redpath
step
    .isOnQuest 5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5142 >> Turn in Little Pamela
    .accept 5149 >> Accept Pamela's Doll
    .target Pamela Redpath
step
    #label PamelaRedpath
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 5149 >> Accept Pamela's Doll
    .target Pamela Redpath
step
    .goto Eastern Plaguelands,38.038,92.549,15,0
    .goto Eastern Plaguelands,39.643,92.522,15,0
    .goto Eastern Plaguelands,39.622,90.079
    >>Loot |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r], |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r] and |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r] throughout the buildings
    >>|cRXP_WARN_They all spawn randomly in any of the 3 buildings in Darrowshire|r
    .collect 12886,1,5149,1 
    .collect 12887,1,5149,1 
    .collect 12888,1,5149,1 
step
    >>|cRXP_WARN_Use|r |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r]|cRXP_WARN_,|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r] |cRXP_WARN_or|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r] |cRXP_WARN_to combine them into|r |cRXP_LOOT_Pamela's Doll|r
    .complete 5149,1 
    .use 12886
    .use 12887
    .use 12888
step
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >> Turn in Pamela's Doll
    .accept 5152 >> Accept Auntie Marlene
    .accept 5241 >> Accept Uncle Carlin
    .target Pamela Redpath
step
    #label grubs
    #sticky
    >>Kill |cRXP_ENEMY_Carrion Grubs|r and |cRXP_ENEMY_Carrion Devourers|r. Loot them for their |cRXP_LOOT_Worm Meat|r
    .complete 5544,1 
    .mob Carrion Grub
    .mob Carrion Devourer
step
    >>Kill |cRXP_ENEMY_Plaguebats|r
    >>Kill |cRXP_ENEMY_Plaguehound Runts|r and |cRXP_ENEMY_Plaguehounds|r
    .complete 5543,1 
    .goto Eastern Plaguelands,33.8,82.2,70,0
    .goto Eastern Plaguelands,17.2,78.2,70,0
    .goto Eastern Plaguelands,16.6,65.8,70,0
    .goto Eastern Plaguelands,40.8,71.8,70,0
    .goto Eastern Plaguelands,48.8,77.6,70,0
    .goto Eastern Plaguelands,32.2,83.4,70,0
    .goto Eastern Plaguelands,31.6,71.6
    .complete 5542,1 
    .goto Eastern Plaguelands,33.8,82.2,70,0
    .goto Eastern Plaguelands,17.2,78.2,70,0
    .goto Eastern Plaguelands,16.6,65.8,70,0
    .goto Eastern Plaguelands,40.8,71.8,70,0
    .goto Eastern Plaguelands,48.8,77.6,70,0
    .goto Eastern Plaguelands,32.2,83.4,70,0
    .goto Eastern Plaguelands,31.6,71.6
    .complete 5542,2 
    .goto Eastern Plaguelands,46.6,64.6,70,0
    .goto Eastern Plaguelands,51.6,61.0,70,0
    .goto Eastern Plaguelands,50.0,54.6,70,0
    .goto Eastern Plaguelands,53.8,51.6,70,0
    .goto Eastern Plaguelands,61.6,61.2,70,0
    .goto Eastern Plaguelands,75.0,73.2,70,0
    .goto Eastern Plaguelands,68.6,58.4,70,0
    .goto Eastern Plaguelands,54.6,59.0
    .mob Plaguebat
    .mob Plaguehound Runt
    .mob Plaguehound
step
    .goto Eastern Plaguelands,81.437,59.820
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 6030 >> Turn in Duke Nicholas Zverenhoff
    .target Duke Nicholas Zverenhoff
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >> Turn in Uncle Carlin
    .accept 5211 >> Accept Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,81.637,59.280
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
    .fp Chapel >> Get the Light's Hope Chapel flight path
    .target Khaelyn Steelwing
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 5281 >> Accept The Restless Souls
    .accept 6021 >> Accept Zaeldarr the Outcast
    .target Caretaker Alen
step
    #completewith Egan
    .goto Eastern Plaguelands,60.6,68.4,0
    .goto Eastern Plaguelands,67.7,41.5,0
    .goto Eastern Plaguelands,75.5,51.2,0
    .goto Eastern Plaguelands,41.8,30.4,0
    .goto Eastern Plaguelands,28.35,28.49,0
    >>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
    .complete 5211,1 
    .mob Diseased Flayer
    .mob Gibbering Ghoul
    .mob Cannibal Ghoul
    .target Darrowshire Spirit
step
    #completewith Egan
    .goto Eastern Plaguelands,69.2,50.6,70,0
    .goto Eastern Plaguelands,64.6,32.0,70,0
    .goto Eastern Plaguelands,51.6,30.6,70,0
    .goto Eastern Plaguelands,56.6,40.0,70,0
    .goto Eastern Plaguelands,44.4,36.4,70,0
    .goto Eastern Plaguelands,48.0,24.6,70,0
    .goto Eastern Plaguelands,50.9,38.3
    >>Kill |cRXP_ENEMY_Frenzied Plaguehounds|r
    .complete 5542,3 
    .mob Frenzied Plaguehound
step
    .isOnQuest 5245
    .goto Eastern Plaguelands,53.506,21.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
    .turnin 5245 >> Turn in Troubled Spirits of Kel'Theril
    .target Aurora Skycaller
step
    .goto Eastern Plaguelands,41.2,25.2,70,0
    .goto Eastern Plaguelands,42.1,38.2,70,0
    .goto Eastern Plaguelands,32.0,35.8,70,0
    .goto Eastern Plaguelands,33.8,25.8,70,0
    .goto Eastern Plaguelands,29.9,23.1,70,0
    .goto Eastern Plaguelands,26.5,37.5,70,0
    .goto Eastern Plaguelands,20.4,20.8,70,0
    .goto Eastern Plaguelands,31.4,29.6
    >>Open the |cRXP_PICK_Large Termite Mounds|r throughout Plaguewood. Loot them for the |cRXP_LOOT_Plagueland Termites|r
    .complete 5903,1 
step
    #label Egan
    .goto Eastern Plaguelands,14.448,33.740
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >> Turn in The Restless Souls
    .target Egan
step
    #completewith next
    .goto Eastern Plaguelands,60.6,68.4,0
    .goto Eastern Plaguelands,67.7,41.5,0
    .goto Eastern Plaguelands,75.5,51.2,0
    .goto Eastern Plaguelands,41.8,30.4,0
    .goto Eastern Plaguelands,28.35,28.49,0
    .goto Eastern Plaguelands,66.0,39.2,0
    >>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
    .complete 5211,1 
    .mob Diseased Flayer
    .mob Gibbering Ghoul
    .mob Cannibal Ghoul
    .target Darrowshire Spirit
step
    .goto Eastern Plaguelands,69.2,50.6,70,0
    .goto Eastern Plaguelands,64.6,32.0,70,0
    .goto Eastern Plaguelands,51.6,30.6,70,0
    .goto Eastern Plaguelands,56.6,40.0,70,0
    .goto Eastern Plaguelands,44.4,36.4,70,0
    .goto Eastern Plaguelands,48.0,24.6,70,0
    .goto Eastern Plaguelands,50.9,38.3
    >>Kill |cRXP_ENEMY_Frenzied Plaguehounds|r
    .complete 5542,3 
    .mob Frenzied Plaguehound
step
    #completewith next
    #requires grubs
    .goto Eastern Plaguelands,23.850,42.438,10,0
    .goto Eastern Plaguelands,23.253,41.611,5 >> If you have |T134863:0|t[Noggenfogger Elixirs] you may try the mountain skip to get to |cRXP_FRIENDLY_Tirion Fordring|r faster << !Priest !Mage
    .goto Eastern Plaguelands,23.253,41.611,5 >> If you have |T134863:0|t[Noggenfogger Elixirs] or |T132917:0|t[Light Feathers] you may try the mountain skip to get to |cRXP_FRIENDLY_Tirion Fordring|r faster << Priest/Mage
    >>The starting location is marked on your map. If you're unable to do it, just run around normally
    .link https://www.twitch.tv/videos/1947486468 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Eastern Plaguelands,7.530,43.635
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5542 >> Turn in Demon Dogs
    .turnin 5543 >> Turn in Blood Tinged Skies
    .turnin 5544 >> Turn in Carrion Grubbage
    .accept 5742 >> Accept Redemption
    .target Tirion Fordring
step
    .goto Eastern Plaguelands,7.530,43.635
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .complete 5742,1 
    .skipgossip
    .target Tirion Fordring
step
    .goto Eastern Plaguelands,7.530,43.635
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5742 >> Turn in Redemption
    .accept 5781 >> Accept Of Forgotten Memories
    .target Tirion Fordring
step
    #completewith next
    .goto Eastern Plaguelands,27.850,86.245,15 >> Enter The Undercroft crypt
step
    .goto Eastern Plaguelands,27.467,84.853
    >>Kill |cRXP_ENEMY_Zaeldarr the Outcast|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 6021,1 
    .mob Zaeldarr the Outcast
step
    .goto Eastern Plaguelands,27.276,85.213
    >>Click the |cRXP_PICK_Torn Scroll|r on the ground
    .accept 6024 >> Accept Hameya's Plea
step
    #completewith next
    .goto Eastern Plaguelands,28.307,86.885
    .cast 6478 >>Click the |cRXP_PICK_Loose Dirt Mound|r to summon |cRXP_ENEMY_Mercutio Filthgorger|r and 3 additional |cRXP_ENEMY_Crypt Robbers|r
step
    .goto Eastern Plaguelands,28.307,86.885
    >>Kill |cRXP_ENEMY_Mercutio Filthgorger|r. Loot him for |cRXP_LOOT_Taelan's Hammer|r
    >>|cRXP_WARN_This quest can be very hard, skip it if you have to|r
    .complete 5781,1 
    .mob Mercutio Filthgorger
step
    .isQuestComplete 5781
    .goto Eastern Plaguelands,7.530,43.635
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5781 >> Turn in Of Forgotten Memories
    .accept 5845 >> Accept Of Lost Honor
    .target Tirion Fordring
step
    .isQuestTurnedIn 5781
    .goto Eastern Plaguelands,7.530,43.635
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5845 >> Accept Of Lost Honor
    .target Tirion Fordring
step
    .abandon 5781 >> Abandon Of Forgotten Memories
step
    .hs >> Hearth to Southshore
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    #completewith next
    .goto Hillsbrad Foothills,49.338,52.272
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fly Western Plaguelands >> Fly to Western Plaguelands
    .target Darla Harris
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5223 >> Turn in Return to Chillwind Camp
    .accept 5225 >> Accept Target: Gahrron's Withering
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .accept 5537 >> Accept Skeletal Fragments
    .target Alchemist Arbington
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >> Turn in A Plague Upon Thee
    .accept 5904 >> Accept A Plague Upon Thee
    .target Nathaniel Dumah
step
    .isQuestTurnedIn 6183
    .goto Western Plaguelands,43.607,84.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Shadowmore|r
    .turnin 6185 >> Turn in The Eastern Plagues
    .accept 6186 >> Accept The Blightcaller Cometh
    .target Flint Shadowmore
step
    .isQuestTurnedIn 5903
    .destroy 15043 >> Delete any left over |T134321:0|t[Plagueland Termites]
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene Redpath|r
    >>|cRXP_FRIENDLY_Marlene Redpath|r may also be upstairs
    .turnin 5152 >> Turn in Auntie Marlene
    .accept 5153 >> Accept A Strange Historian
    .target Marlene Redpath
step
    .goto Western Plaguelands,49.696,76.754
    >>Click |cRXP_PICK_Joseph Redpath's Monument|r. Loot it for |cRXP_LOOT_Joseph's Wedding Ring|r
    .complete 5153,1 
step
    #completewith CountingTime
    >>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
    .complete 5537,1 
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
    .turnin 5153 >> Turn in A Strange Historian
    .accept 5154 >> Accept The Annals of Darrowshire
    .accept 4971 >> Accept A Matter of Time
    .target Chromie
step
    #completewith next
    .goto Western Plaguelands,43.822,69.250,10,0 >> Enter the Ruins of Andorhal Town Hall
step
    .goto Western Plaguelands,43.50,69.46
    >>Enter the Ruins of Andorhal Town Hall
    >>Open the |cRXP_PICK_Musty Tomes|r. Loot them for the |cRXP_LOOT_Annals of Darrowshire|r
    >>|cRXP_WARN_The correct |cRXP_PICK_Musty Tome|r will have its pages be a completely dark-shade, or have a brown stain. If it's only half white and half black, that is a trap|r
    >>|cRXP_WARN_There can be times where all |cRXP_PICK_Musty Tomes|r are traps and you must open them to force a correct one to spawn|r
    .complete 5154,1 
step
    .goto Western Plaguelands,45.172,62.559,25,0
    .goto Western Plaguelands,46.858,62.040,25,0
    .goto Western Plaguelands,48.324,62.610,25,0
    .goto Western Plaguelands,48.10,63.92,20,0
    .goto Western Plaguelands,48.06,66.18
    >>Kill |cRXP_ENEMY_Temporal Parasites|r
    .use 12627 >>|cRXP_WARN_Use the|r |T134229:0|t[Temporal Displacer] |cRXP_WARN_at the silos to make them spawn. If the silo isn't pulsing blue then it cannot spawn any|r |cRXP_ENEMY_Temporal Parasites|r
    >>|cRXP_WARN_Multiple |cRXP_ENEMY_Temporal Parasites|r can spawn at the same time, and once one dies, another one can instantly spawn|r
    .complete 4971,1 
    .mob Temporal Parasite
step
    .isQuestComplete 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
    .turnin 4971 >> Turn in A Matter of Time
    .accept 4972 >> Accept Counting Out Time
    .turnin 5154 >> Turn in The Annals of Darrowshire
    .accept 5210 >> Accept Brother Carlin
    .target Chromie
step
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
    .accept 4972 >> Accept Counting Out Time
    .turnin 5154 >> Turn in The Annals of Darrowshire
    .accept 5210 >> Accept Brother Carlin
    .target Chromie
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r upstairs
    .turnin 5154 >> Turn in The Annals of Darrowshire
    .accept 5210 >> Accept Brother Carlin
    .target Chromie
step
    #optional
    .abandon 4971 >> Abandon A Matter of Time if it's too difficult
step
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,38.71,68.25,20,0
    .goto Western Plaguelands,38.51,69.74,20,0
    .goto Western Plaguelands,40.63,68.40,20,0
    .goto Western Plaguelands,41.08,67.45,20,0
    .goto Western Plaguelands,40.69,66.16,20,0
    .goto Western Plaguelands,41.46,69.85,15,0
    .goto Western Plaguelands,42.17,68.88,20,0
    .goto Western Plaguelands,42.67,70.31
    >>Open the |cRXP_PICK_Small Lockboxes|r. Loot them for |cRXP_LOOT_Andorhal Watches|r
    >>|cRXP_WARN_These are found inside of the burnt-down houses|r
    .complete 4972,1 
step
    #label CountingTime
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >> Turn in Counting Out Time
    .target Chromie
step
    .goto Western Plaguelands,37.8,70.6,70,0
    .goto Western Plaguelands,42.6,73.8,70,0
    .goto Western Plaguelands,49.6,69.4,70,0
    .goto Western Plaguelands,49.6,63.6,70,0
    .goto Western Plaguelands,43.0,63.4,70,0
    .goto Western Plaguelands,39.8,67.4
    >>Kill |cRXP_ENEMY_Skeletal Executioners|r and |cRXP_ENEMY_Skeletal Acolytes|r. Loot them for their |cRXP_LOOT_Skeletal Fragments|r
    .complete 5537,1 
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >> Turn in Skeletal Fragments
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .fly Eastern Plaguelands >> Fly to Eastern Plaguelands
    .target Bibilfaz Featherwhistle
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5210 >> Turn in Brother Carlin
    .accept 5181 >> Accept Villains of Darrowshire
    .accept 5168 >> Accept Heroes of Darrowshire
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >> Turn in Zaeldarr the Outcast
    .target Caretaker Alen
step
    .isQuestTurnedIn 5781
    .goto Eastern Plaguelands,71.300,33.959
    >>Loot the |cRXP_LOOT_Symbol of Lost Honor|r underwater
    .complete 5845,1 
step
    .goto Eastern Plaguelands,64.80,21.45,35,0
    .goto Eastern Plaguelands,70.8,16.2
    >>Kill |cRXP_ENEMY_Infiltrator Hameya|r. Loot him for |cRXP_LOOT_Hameya's Key|r
    >>|cRXP_ENEMY_Mossflayer Scouts|r |cRXP_WARN_will run away and call for help as soon as you agro them|r
    >>|cRXP_ENEMY_Infiltrator Hameya|r |cRXP_WARN_patrols around the graves of Zul'Mashar|r
    .complete 6024,1 
    .unitscan Infiltrator Hameya
step
    .goto Eastern Plaguelands,51.106,49.937
    >>Loot the |cRXP_LOOT_Skull of Horgus|r underwater
    .complete 5181,1 
step
    .goto Eastern Plaguelands,60.6,68.4,0
    .goto Eastern Plaguelands,67.7,41.5,0
    .goto Eastern Plaguelands,75.5,51.2,0
    .goto Eastern Plaguelands,41.8,30.4,0
    .goto Eastern Plaguelands,28.35,28.49,0
    .goto Eastern Plaguelands,28.35,28.49,70,0
    .goto Eastern Plaguelands,37.85,31.10,70,0
    .goto Eastern Plaguelands,66.0,39.2,80,0
    .goto Eastern Plaguelands,59.4,69.0,100,0
    .goto Eastern Plaguelands,77.4,54.0,70,0
    .goto Eastern Plaguelands,80.6,43.6,80,0
    .goto Eastern Plaguelands,66.0,39.2
    >>Kill |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Gibbering Ghouls|r and |cRXP_ENEMY_Cannibal Ghouls|r. Talk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that spawn from their corpses
    .complete 5211,1 
    .mob Diseased Flayer
    .mob Gibbering Ghoul
    .mob Cannibal Ghoul
    .target Darrowshire Spirit
step
    .goto Eastern Plaguelands,53.913,65.755
    >>Loot the |cRXP_LOOT_Shattered Sword of Marduk|r on the ground
    .complete 5181,2 
step
    .isQuestComplete 6024
    .goto Eastern Plaguelands,28.036,86.155
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .turnin 6024 >> Turn in Hameya's Plea
step
    .abandon 6024 >> Abandon Hameya's Plea
step
    .isQuestTurnedIn 5781
    .goto Eastern Plaguelands,7.530,43.635
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5845 >> Turn in Of Lost Honor
    .accept 5846 >> Accept Of Love and Family
    .target Tirion Fordring
step
    #completewith next
    >>Kill |cRXP_ENEMY_Diseased Grizzlies|r
    >>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Plague Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Grizzlies|r to spawn|r
    .complete 4985,1 
    .unitscan Diseased Grizzly
step
    .isOnQuest 5168
    .goto Western Plaguelands,63.789,57.192
    >>Loot |cRXP_LOOT_Redpath's Shield|r on the ground
    >>|cRXP_WARN_The other objective of this quest requires going into Hearthglen. If you are not comfortable going into Hearthglen with a group later, skip this step now and abandon Heroes of Darrowshire|r
    .complete 5168,2 
step
    .goto Western Plaguelands,62.644,58.945
    >>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Loot him for the |cRXP_LOOT_Gahrron's Withering Cauldron Key|r
    >>|cRXP_ENEMY_Cauldron Lord Soulwrath|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Cauldron|r
    .complete 5225,1 
    .unitscan Cauldron Lord Soulwrath
step
    .goto Western Plaguelands,62.573,58.573
    >>Click on the |cRXP_PICK_Scourge Cauldron|r
    .turnin 5225 >> Turn in Target: Gahrron's Withering
    .accept 5226 >> Accept Return to Chillwind Camp
step
    .goto Western Plaguelands,58.8,58.6,70,0
    .goto Western Plaguelands,53.6,48.0,70,0
    .goto Western Plaguelands,58.8,52.6,70,0
    .goto Western Plaguelands,67.2,46.6,70,0
    .goto Western Plaguelands,66.0,55.6,70,0
    .goto Western Plaguelands,60.8,50.8
    >>Kill |cRXP_ENEMY_Diseased Grizzlies|r
    >>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Plague Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Grizzlies|r to spawn|r
    .complete 4985,1 
    .unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris Deepriver|r
    >>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid agroing multiple at the same time|r
    .turnin 4985 >> Turn in The Wildlife Suffers Too
    .accept 4986 >> Accept Glyphed Oaken Branch
    .target Mulgris Deepriver
step
    .goto Western Plaguelands,48.348,31.996
    >>Click on the |cRXP_PICK_Northridge Lumber Mill Crate|r to place the |cRXP_PICK_Termite Barrel|r and then click on the |cRXP_PICK_Termite Barrel|r after
    .skipgossip
    .turnin 5904 >> Turn in A Plague Upon Thee
    .accept 6389 >> Accept A Plague Upon Thee
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .accept 6004 >> Accept Unfinished Business
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,50.85,40.68,60,0
    .goto Western Plaguelands,51.97,44.47,60,0
    .goto Western Plaguelands,41.23,51.54,60,0
    .goto Western Plaguelands,50.85,40.68
    >>Kill |cRXP_ENEMY_Scarlet Medics|r, |cRXP_ENEMY_Scarlet Hunters|r, |cRXP_ENEMY_Scarlet Mages|r and |cRXP_ENEMY_Scarlet Knights|r
    >>|cRXP_ENEMY_Scarlet Medics|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Hunters|r share spawns|r
    >>|cRXP_ENEMY_Scarlet Mages|r |cRXP_WARN_and |cRXP_ENEMY_Scarlet Knights|r share spawns|r
    .complete 6004,1 
    .complete 6004,2 
    .complete 6004,3 
    .complete 6004,4 
    .mob Scarlet Medic
    .mob Scarlet Hunter
    .mob Scarlet Mage
    .mob Scarlet Knight
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6004 >> Turn in Unfinished Business
    .accept 6023 >> Accept Unfinished Business
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,56.38,34.11,50,0
    .goto Western Plaguelands,57.83,36.10
    >>Kill |cRXP_ENEMY_Huntsman Radley|r
    .complete 6023,1 
    .mob Huntsman Radley
step
    .goto Western Plaguelands,54.520,23.818
    >>Kill |cRXP_ENEMY_Cavalier Durgen|r
    >>|cRXP_ENEMY_Cavalier Durgen|r |cRXP_WARN_will patrol up and down the Tower. Wait at the bottom for him to come to you instead of going inside|r
    .complete 6023,2 
    .unitscan Cavalier Durgen
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6023 >> Turn in Unfinished Business
    .accept 6025 >> Accept Unfinished Business
    .target Kirsta Deepshadow
step
    #completewith HearthglenFinish
    .goto Western Plaguelands,45.7,18.8
    .subzone 190 >> Travel to Hearthglen
step
    .goto Western Plaguelands,45.7,18.8
    >>Ascend the Hearthglen Tower
    >>|cRXP_WARN_You may either run straight to the top and jump down or clear your way up|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_High Protector Lorik|r who is a strong Elite that roams Hearthglen|r
    >>|cRXP_WARN_This quest can be difficult. Skip it if you are not confident going into Hearthglen|r
    .complete 6025,1 
    .unitscan High Protector Lorik
step
    #label HearthglenFinish
    .isOnQuest 5168
    .goto Western Plaguelands,42.519,18.990
    >>Loot |cRXP_LOOT_Davil's Libram|r on the table
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_High Protector Lorik|r who is a strong Elite that roams Hearthglen|r
    >>|cRXP_WARN_This quest can be difficult. Skip it if you are not confident going into Hearthglen|r
    .complete 5168,1 
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6025 >> Turn in Unfinished Business
    .isQuestComplete 6025
    .target Kirsta Deepshadow
step
    #optional
    .abandon 6025 >> Abandon Unfinished Business
step
    .hs >> Hearth to Southshore
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    #completewith next
    .goto Hillsbrad Foothills,49.338,52.272
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fly Western Plaguelands >> Fly to Western Plaguelands
    .target Darla Harris
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 5226 >> Turn in Return to Chillwind Camp
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,42.702,84.031
    .target Commander Ashlam Valorfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 5237 >> Accept Mission Accomplished!
    .turnin 5237 >> Turn in Mission Accomplished!
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 6389 >> Turn in A Plague Upon Thee
    .target Nathaniel Dumah
step
    .isQuestTurnedIn 5781
    .goto Western Plaguelands,65.7,75.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artist Renfray|r
    .turnin 5846 >> Turn in Of Love and Family
    .target Artist Renfray
step
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .fly Eastern Plaguelands >> Fly to Eastern Plaguelands
    .target Bibilfaz Featherwhistle
step
    .isQuestComplete 5211
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5211 >> Turn in Defenders of Darrowshire
    .target Carlin Redpath
step
    .isQuestComplete 5168
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5181 >> Turn in Villains of Darrowshire
    .turnin 5168 >> Turn in Heroes of Darrowshire
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5181 >> Turn in Villains of Darrowshire
    .target Carlin Redpath
step
    .abandon 5168 >> Abandon Heroes of Darrowshire
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
step
    .accept 5343 >> Accept Barov Family Fortune
    .accept 5384 >> Accept Kirtonos the Herald
    .accept 5515 >> Accept Krastinov's Bag of Horrors
    .accept 5382 >> Accept Doctor Theolen Krastinov, the Butcher
    .accept 5582 >> Accept Healthy Dragon Scale
    .accept 5529 >> Accept Plagued Hatchlings
step
    .turnin 5343 >> Turn in Barov Family Fortune
    .turnin 5384 >> Turn in Kirtonos the Herald
    .turnin 5515 >> Turn in Krastinov's Bag of Horrors
    .turnin 5382 >> Turn in Doctor Theolen Krastinov, the Butcher
    .turnin 5582 >> Turn in Healthy Dragon Scale
    .turnin 5529 >> Turn in Plagued Hatchlings
step
    .accept 5212 >> Accept The Flesh Does Not Lie
    .accept 5213 >> Accept The Active Agent
    .accept 5263 >> Accept Above and Beyond
    .accept 5243 >> Accept Houses of the Holy
    .accept 5122 >> Accept The Medallion of Faith
    .accept 5125 >> Accept Aurius' Reckoning
    .accept 5463 >> Accept Menethil's Gift
step
    .turnin 5212 >> Turn in The Flesh Does Not Lie
    .turnin 5213 >> Turn in The Active Agent
    .turnin 5263 >> Turn in Above and Beyond
    .turnin 5243 >> Turn in Houses of the Holy
    .turnin 5122 >> Turn in The Medallion of Faith
    .turnin 5125 >> Turn in Aurius' Reckoning
    .turnin 5463 >> Turn in Menethil's Gift
]])