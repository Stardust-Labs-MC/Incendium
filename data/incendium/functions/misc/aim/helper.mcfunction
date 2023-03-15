# from: misc/aim/nearest_player
# @s: helper marker, positioned at entity

execute in minecraft:overworld positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0 ~ ~
data modify storage incendium:temp aim.vector set from entity @s Pos
data modify storage incendium:temp aim.rotation set from entity @s Rotation
execute in minecraft:overworld run tp @s 0.0 0.0 0.0
