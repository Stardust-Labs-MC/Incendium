# from: ./loop
# @s: newly spawned arrow for shotgun

data modify entity @s {} merge from storage incendium:temp arrow
data merge entity @s {pickup:0b,PierceLevel:4b,damage:8.5d,crit:0b,NoGravity:1b}
tp @s ~ ~ ~ ~ ~

execute as @e[type=marker,tag=in.helper_entity,limit=1] in minecraft:overworld run function incendium:item/multiplex_crossbow/arrow/helper

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 1900
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 1900
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 1900
data modify entity @s Rotation set from storage incendium:temp aim.rotation
data modify entity @s Air set value 1s

tag @s add in.checked
tag @s add in.ticking_entity
tag @s add in.air_toggle
tag @s add in.temp_arrow
