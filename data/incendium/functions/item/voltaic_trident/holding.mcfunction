# from: player/main
# @s: entity

# tag @s add in.voltaic_trident
execute if predicate incendium:random/25 run particle minecraft:end_rod ~ ~1 ~ 1.5 1.5 1.5 0.1 1 force

execute if entity @s[predicate=incendium:random/10,predicate=incendium:biome/toxic_heap] run playsound minecraft:block.beacon.ambient player @a[distance=..7] ~ ~ ~ 2 2

execute if entity @s[predicate=incendium:random/10,predicate=incendium:dimension/overworld,predicate=incendium:weather/thunder] run playsound minecraft:block.beacon.ambient player @a[distance=..7] ~ ~ ~ 2 2

execute if entity @s[predicate=incendium:random/10,predicate=incendium:biome/toxic_heap] run function incendium:item/voltaic_trident/explode/lightning/random_start

execute if entity @s[predicate=incendium:random/10,predicate=incendium:dimension/overworld,predicate=incendium:weather/thunder] run function incendium:item/voltaic_trident/explode/lightning/random_start
