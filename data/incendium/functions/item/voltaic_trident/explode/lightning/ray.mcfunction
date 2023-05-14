execute positioned ^ ^ ^0.2 unless block ^ ^ ^ #incendium:airs if entity @p[predicate=incendium:holding/voltaic_trident,distance=..7] run function incendium:item/voltaic_trident/explode/lightning/stop

execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:mobs,tag=!laser,dx=0,sort=nearest] if score #distance in.fire_laser matches 10.. positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:item/voltaic_trident/explode/lightning/hit_entity_chain

scoreboard players add #distance in.fire_laser 1

execute if predicate incendium:random/80 run particle minecraft:dust 0.6 0.2 1 1 ~ ~ ~ 0.01 0.01 0.01 0.0 1 force

execute if score #hit in.fire_laser matches 0 if predicate incendium:random/40 if score #distance in.fire_laser matches 6..30 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/voltaic_trident/explode/lightning/branch

execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser matches ..30 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/voltaic_trident/explode/lightning/ray
