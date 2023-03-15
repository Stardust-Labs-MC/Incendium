# from: ./on_shot
# @s: sentrys wrath arrow

execute anchored eyes run summon marker ^ ^ ^0.25 {Duration:250,Tags:["in.sentrys_wrath"]}
execute as @e[type=marker,distance=..3,tag=!in.checked,tag=in.sentrys_wrath,limit=1] run function incendium:item/sentrys_wrath/init

playsound minecraft:block.respawn_anchor.charge player @a[distance=..30] ~ ~ ~ 2 0.5
playsound minecraft:entity.ender_dragon.hurt player @a[distance=..30] ~ ~ ~ 2 0.75
scoreboard players set @s in.cd_wrath 60
