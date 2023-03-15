execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:mobs,tag=!laser,dx=0,sort=nearest] if entity @s[dx=0] run function incendium:item/prismatic_shield/ray/hit

scoreboard players add #distance3 in.fire_laser 1

execute if predicate incendium:random/90 run particle minecraft:dust 1 1 1 1.5 ~ ~ ~ 0.01 0.01 0.01 0.0 1 force

execute if score #hit in.fire_laser matches 0 if score #distance3 in.fire_laser matches 27 run function incendium:item/prismatic_shield/ray/attack

execute if score #hit in.fire_laser matches 0 if score #distance3 in.fire_laser matches ..27 positioned ^ ^ ^0.2 rotated ~ ~ run function incendium:item/prismatic_shield/ray/iter
