execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @p[tag=in.valid_player,distance=..4] if score #hit in.fire_laser matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run scoreboard players set #hit in.fire_laser 1

scoreboard players add $distance in.fire_laser 1
#execute if predicate incendium:90_percent run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.01 0.01 0.01 0.0 1 force
execute if score #hit in.fire_laser matches 0 if score $distance in.fire_laser matches ..80 if block ~ ~ ~ #incendium:airs positioned ^ ^ ^1 rotated ~ ~ run function incendium:castle/utils/ray/iter
