tp @s @e[tag=world_commands]
tellraw @s [{"text":"Teleporting to the Command Room...!","italic":"true","color":"green"}]
tellraw @a[tag=OP] [{"text":"Successfully TPed ","color":"red"},{"selector":"@s"},{"text":" to the Command Room!","color":"red"}]
scoreboard players enable @a Commands
scoreboard players set @a Commands 0
