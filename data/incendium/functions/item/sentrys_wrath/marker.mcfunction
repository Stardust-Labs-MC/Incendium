# from: entity/other/main
# @s: sentry's wrath marker

scoreboard players add @s in.timer 1
particle minecraft:dust 0 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10 force
tp @s ^ ^ ^0.25

execute facing entity @e[type=#incendium:mobs_no_player,limit=3,sort=random,distance=..5.5,predicate=incendium:random/20] eyes run function incendium:item/sentrys_wrath/short_lightning/start_ray

scoreboard players set #ray_started in.fire_laser 0

# give it 2 ticks before doing the rest of the lightning
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 0 -90 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 0 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 90 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 180 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 270 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 45 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 135 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 180 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 225 -45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 0 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 90 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 180 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 270 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 45 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 135 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 180 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 225 45 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 0 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 90 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 180 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 270 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 45 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 135 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 180 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray
execute if entity @s[scores={in.timer=3..},predicate=incendium:random/0_4] rotated 225 0 run function incendium:item/sentrys_wrath/short_lightning/start_ray

# firework stuff
execute if score $ray_started in.fire_laser matches 1.. run data modify storage incendium:temp player.UUID set from entity @s data.player.UUID
execute if score $ray_started in.fire_laser matches 1.. as @e[type=firework_rocket,tag=in.sentrys_wrath_firework,tag=!in.checked,distance=..20] run function incendium:misc/firework

execute unless block ~ ~ ~ #incendium:airs run function incendium:item/sentrys_wrath/explode

kill @s[scores={in.timer=250..}]
