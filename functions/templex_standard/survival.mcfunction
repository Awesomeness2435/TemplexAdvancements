gamemode s @s
tellraw @a[tag=OP] [{"text":"Survival Trigger","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just set ","color":"red"},{"selector":"@s"},{"text":"'s gamemode to Survival"}]
tellraw @s [{"text":"There you go!","color":"blue"}]
scoreboard players set @s Survival 0
scoreboard players enable @a Survival
