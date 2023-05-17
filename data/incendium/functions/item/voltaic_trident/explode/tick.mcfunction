# from ./loop
# looped started by: entity/other/main
# @s: AEC ticking explosion

scoreboard players set $boom in.dummy 0
scoreboard players operation $id in.dummy = @s in.trident_id
execute unless entity @e[type=trident,tag=in.voltaic_trident,predicate=incendium:matching/trident_id] run function incendium:item/voltaic_trident/explode/boom
execute if score $boom in.dummy matches 1.. run kill @s

particle dust 0.4 0 1 1 ~ ~ ~ 0.25 0.25 0.25 0.022 5 force

execute if entity @s run schedule function incendium:item/voltaic_trident/explode/loop 2t replace
