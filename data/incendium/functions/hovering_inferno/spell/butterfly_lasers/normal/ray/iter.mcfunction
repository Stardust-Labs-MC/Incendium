execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=player,tag=!in.laser,tag=in.survival_player,dx=0,sort=nearest] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:hovering_inferno/spell/butterfly_lasers/normal/ray/hit
scoreboard players add #distance in.fire_laser 1
execute if predicate incendium:random/20 run particle minecraft:dust 1 0.3 0.7 1.65 ~ ~ ~ 0.01 0.01 0.01 0.0 1 force
execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser matches ..120 positioned ^ ^ ^0.3 run function incendium:hovering_inferno/spell/butterfly_lasers/normal/ray/iter
