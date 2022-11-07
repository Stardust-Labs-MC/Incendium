# from: ./use
# @s: player

tag @s add in.self

# data modify storage incendium:temp player.Pos set from entity @s Pos

# # nether scale (8x)
# execute store result storage incendium:temp player.Pos[0] double 0.001 run data get storage incendium:temp player.Pos[0] 8000
# execute store result storage incendium:temp player.Pos[2] double 0.001 run data get storage incendium:temp player.Pos[2] 8000
# execute store result score %in.playerx in.dummy run data get storage incendium:temp player.Pos[0]
# execute store result score %in.playerz in.dummy run data get storage incendium:temp player.Pos[2]

# # get location data
# execute store result score %in.playerx in.dummy run data get storage incendium:temp player.Pos[0]
# execute store result score %in.playerz in.dummy run data get storage incendium:temp player.Pos[2]
# execute store result score %in.wb+ in.dummy run worldborder get
# execute store result score %in.wb- in.dummy run scoreboard players operation %in.wb+ in.dummy *= #-1 in.constants

# execute as @s store result score %in.wb+ in.dummy run worldborder get
# scoreboard players operation %in.wb+ in.dummy *= #2 in.constants
# scoreboard players operation %in.wb- in.dummy *= #2 in.constants

# # compare pos to worldborder - adjust if needed
# execute if score %in.playerx in.dummy >= %in.wb+ in.dummy run execute store result storage incendium:temp player.Pos[0] double 1.0 run scoreboard players get %in.wb+ in.dummy
# execute if score %in.playerx in.dummy <= %in.wb- in.dummy run execute store result storage incendium:temp player.Pos[0] double 1.0 run scoreboard players get %in.wb- in.dummy
# execute if score %in.playerz in.dummy >= %in.wb+ in.dummy run execute store result storage incendium:temp player.Pos[2] double 1.0 run scoreboard players get %in.wb+ in.dummy
# execute if score %in.playerz in.dummy <= %in.wb- in.dummy run execute store result storage incendium:temp player.Pos[2] double 1.0 run scoreboard players get %in.wb- in.dummy

# # teleport player
# execute in minecraft:overworld positioned 0.0 0.0 0.0 as @e[type=marker,tag=in.helper_entity,distance=..10] run function incendium:item/patron/scroll_of_returning/coords

tellraw @s {"text": "Woosh..! A familiar place awaits.", "italic": true, "color": "#D393F5"}

# particles before tping
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 50
particle minecraft:dust_color_transition 0.5 0.2 0.66 4.0 1.0 0.5 0.0 ~ ~ ~ 0.25 0.5 0.25 0.35 25

execute in minecraft:overworld run tp @s @e[type=marker,tag=in.world_spawn,limit=1]

execute at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 50
execute at @s run particle minecraft:dust_color_transition 1.0 0.5 0.0 4.0 0.5 0.2 0.66 ~ ~ ~ 0.25 0.5 0.25 0.35 25

# random cond to not crumble
execute store result score $rand in.dummy if predicate incendium:random/10
function incendium:item/patron/scroll_of_returning/crumble

tag @s remove in.self
