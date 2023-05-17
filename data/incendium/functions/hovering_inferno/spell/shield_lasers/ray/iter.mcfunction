# laser

scoreboard players add $distance in.fire_laser 1
execute if predicate incendium:random/90 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.01 0.01 0.01 0.0 1 force

execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=player,tag=in.survival_player,tag=!laser,dx=0,sort=nearest,limit=1,predicate=incendium:dimension/nether] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:hovering_inferno/misc/generic_hit_entity

execute if score #hit in.fire_laser matches 0 if score $distance in.fire_laser matches ..250 positioned ^ ^ ^0.2 rotated ~ ~ run function incendium:hovering_inferno/spell/shield_lasers/ray/iter
