# from: ./start
# @s: baby ghast

execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=fireball,tag=!in.laser,dx=0,sort=nearest] if score #hit in.fire_laser matches 0 if entity @s[dx=0] run function incendium:entity/baby_ghast/ray/hit
scoreboard players add #distance in.fire_laser 1
execute if predicate incendium:random/40 run particle minecraft:flame ~ ~ ~ 0.01 0.01 0.01 0.0 1 force
execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser matches ..250 positioned ^ ^ ^0.2 if block ~ ~ ~ #incendium:airs rotated ~ ~ run function incendium:entity/baby_ghast/ray/iter 