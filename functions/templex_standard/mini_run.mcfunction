#### You need to have "@p[r=100,m=!1,tag=!RunCmplt]" in the repeating command block for the minigame to work!

scoreboard players operation @s Dummy = Z Run

execute @a[tag=!InRun,r=100,m=2] ~ ~ ~ scoreboard players set Z Run 0
execute @a[tag=!InRun,r=100,m=2] ~ ~ ~ scoreboard players tag @a remove RunAdded
scoreboard players tag @a[tag=!InRun,r=100,m=2] add InRun
execute @a[r=100,tag=!RunAdded] ~ ~ ~ scoreboard players add Z Run 1
execute @a[r=100,tag=!RunAdded] ~ ~ ~ scoreboard players tag @s add RunAdded

execute @a[tag=InRun,r=100] ~ ~ ~ detect ~ ~ ~ water 0 tp @s -580424 18 -1421573 -90 0

execute @s[score_Dummy_min=3,score_Dummy=6,tag=!Started] ~ ~ ~ fill -580422 18 -1421576 -580422 24 -1421570 minecraft:air
execute @s[score_Dummy_min=3,score_Dummy=6,tag=!Started] ~ ~ ~ title @a[tag=InRun,r=100] title [{"text":"Now Starting!","color":"green"}]
execute @s[score_Dummy_min=3,score_Dummy=6] ~ ~ ~ scoreboard players tag @a[tag=InRun,r=100] add Started
execute @s[score_Dummy_min=0,score_Dummy=2] ~ ~ ~ title @a[tag=InRun,r=100] actionbar [{"text":"Waiting for players...","color":"red"}]

effect @a[tag=InRun,r=100] minecraft:saturation 3 20 true

execute @a[tag=RunCmplt,r=100] ~ ~ ~ title @a[tag=InRun,r=100] actionbar [{"selector":"@s"},{"text":" has won!","color":"green"}]
execute @a[tag=RunCmplt,r=100] ~ ~ ~ scoreboard players add @s Dummy 1

execute @a[score_Dummy_min=20,score_Dummy=20,tag=InRun] ~ ~ ~ tellraw @a[r=100] [{"text":"Run Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to their homes in 5 seconds..."}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players set Z Run 0
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ tellraw @a[r=100] [{"text":"Run Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Returning all players to their homes..."}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ tellraw @a [{"text":"Run Minigame","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@a[tag=RunCmplt,r=100]"},{"text":" has just won a game of the Parkour Run Minigame!","color":"red"}]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players add @a[tag=RunCmplt,r=100] TC 120
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players add @a[tag=InRun,r=100] TC 5
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ gamemode s @a[r=100,m=2]
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players set @a[r=100,m=0] Spawn 1
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ fill -580422 18 -1421576 -580422 24 -1421570 minecraft:iron_bars
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players tag @a[r=100] remove Started
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players tag @a remove RunCmplt
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players tag @a remove InRun
execute @a[score_Dummy_min=120,score_Dummy=120,tag=InRun] ~ ~ ~ scoreboard players reset @a[r=100,tag=InRun,m=0] Dummy

execute @a[tag=InRun,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 trigger Spawn set 1
execute @a[tag=InRun,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players add @s RunTick 1
execute @a[tag=InRun,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players tag @s remove InRun
execute @a[tag=InRun,r=100] ~ ~ ~ detect ~ ~ ~ stone_pressure_plate 1 scoreboard players remove Z Run 1
