# from: player/main
# @s: player firing ragnarok

tag @s add in.self

scoreboard players operation $ragnarok in.dummy = @s in.ragnarok
scoreboard players operation $ragnarok in.dummy *= #2 in.constants
scoreboard players operation $ragnarok in.dummy /= #3 in.constants

scoreboard players operation $max_distance in.dummy = $ragnarok in.dummy
scoreboard players operation $max_distance in.dummy += $ragnarok in.dummy
scoreboard players add $max_distance in.dummy 50

scoreboard players operation $mid_max_distance in.dummy = $max_distance in.dummy
scoreboard players operation $mid_max_distance in.dummy /= #3 in.constants

scoreboard players operation $max_branch in.dummy = $ragnarok in.dummy
# scoreboard players add $max_branch in.dummy 50
scoreboard players operation $max_branch in.dummy *= $max_branch in.dummy
scoreboard players operation $max_branch in.dummy /= #10 in.constants

tag @s add laser

data modify storage incendium:temp player.Rotation set from entity @s Rotation

execute unless score $ragnarok in.dummy matches 5.. run function incendium:item/ragnarok/fail
execute if score $ragnarok in.dummy matches 5.. anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["in.ragnarok"]}
execute if score $ragnarok in.dummy matches 5.. anchored eyes positioned ^ ^ ^1 as @e[type=marker,limit=1,distance=..1.1,tag=in.ragnarok,tag=!in.checked] positioned as @s run function incendium:item/ragnarok/marker

kill @e[type=#arrows,tag=!in.checked,distance=..3]

tag @s remove laser
tag @s remove in.self

schedule function incendium:item/ragnarok/loop 1t replace
