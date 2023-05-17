execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:sentry_targets,tag=!laser,dx=0,sort=nearest] if score #hit in.fire_laser matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:entity/sentry/ray/hit_entity
scoreboard players add #distance in.fire_laser 1
execute if predicate incendium:random/50 run particle minecraft:soul_fire_flame ~ ~ ~ 0.01 0.01 0.01 0.0 1 force
#execute positioned ^ ^ ^0.2 if block ~ ~ ~ red_sand run function incendium:sand/sentry_iron
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/20 if score #distance in.fire_laser matches 0..125 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:entity/sentry/ray/branch
execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser matches ..50 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:entity/sentry/ray/ray
