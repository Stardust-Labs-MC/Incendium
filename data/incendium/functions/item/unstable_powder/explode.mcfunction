# from: entity/other/main
# @s: unstable_powder item entity

execute if block ~ ~ ~ water run tag @s remove in.ticking_entity
execute unless data entity @s Item{Count:1b} run tag @s remove in.ticking_entity

kill @s[tag=in.ticking_entity]

# audiovisuals
execute if entity @s[tag=in.ticking_entity] run playsound minecraft:item.trident.thunder player @a[distance=..30] ~ ~ ~ 0.4 1.6 0
execute if entity @s[tag=in.ticking_entity] run playsound minecraft:block.bell.use player @a[distance=..30] ~ ~ ~ 2 1.5
execute if entity @s[tag=in.ticking_entity] run playsound minecraft:block.bell.resonate player @a[distance=..30] ~ ~ ~ 2 1.25
execute if entity @s[tag=in.ticking_entity] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 150 force
execute if entity @s[tag=in.ticking_entity] run particle minecraft:flash ~ ~ ~ 0 0 0 10 40 force
execute if entity @s[tag=in.ticking_entity] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 250
execute if entity @s[tag=in.ticking_entity] run effect give @e[type=#incendium:mobs_no_player,tag=in.castle,distance=..80] glowing 20 0 true
execute if entity @s[tag=in.ticking_entity] run effect give @e[type=#incendium:mobs_no_player,tag=in.sanctum,distance=..80] glowing 20 0 true
