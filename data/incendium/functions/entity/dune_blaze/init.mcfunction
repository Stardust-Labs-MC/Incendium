# from: entity/mobs/init
# @s: dune blaze

tag @s add in.ticking_entity
tag @s add in.dune_blaze

data merge entity @s {CustomName:'"Desert Blaze"',CustomNameVisible:false,DeathLootTable:"incendium:entity/dune_blaze"}
team join in.noname @s

attribute @s minecraft:generic.follow_range base set 16
attribute @s minecraft:generic.movement_speed base set 0.5

execute if predicate incendium:other/in_portal run tp @s ~ -1000 ~