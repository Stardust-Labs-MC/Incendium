# @s: falling_block
#> aim and fire prolly

execute facing entity @p[tag=in.valid_player] eyes run function incendium:misc/aim

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 950
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 950
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 950

data merge entity @s {NoGravity:0b,Air:1s}

tag @s add in.fire_block
tag @s add in.air_toggle
tag @s add in.kill_fire
tag @s add in.ticking_entity
