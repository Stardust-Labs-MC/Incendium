# from: ./init
# @s: helper

tp @s 0.0 0.0 0.0 ~ ~
function incendium:item/multiplex_crossbow/arrow/rotate

execute rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.05
data modify storage incendium:temp aim.vector set from entity @s Pos
data modify storage incendium:temp aim.rotation set from entity @s Rotation
tp @s 0.0 0.0 0.0
