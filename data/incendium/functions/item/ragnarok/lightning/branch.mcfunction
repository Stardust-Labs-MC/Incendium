execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:mobs,tag=!laser,dx=0,sort=nearest] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:item/ragnarok/lightning/hit_entity_chain

scoreboard players add #distance2 in.fire_laser 1

particle minecraft:end_rod ~ ~ ~ 0.01 0.01 0.01 0.0 1 force

execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #incendium:airs run particle minecraft:dust 0 1 1 2.25 ~ ~ ~ 0 0 0 0.03 4 force
execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #incendium:airs if predicate incendium:random/other/x if predicate incendium:random/25 run summon lightning_bolt

execute if score #hit in.fire_laser matches 0 if predicate incendium:random/3_5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~-15 ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/3_5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~15 ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/3_5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~ ~-15 if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/3_5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~ ~15 if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~-15 ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch_straight
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~15 ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch_straight
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~ ~-15 if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch_straight
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/5 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~ ~15 if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch_straight
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/0_4 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 facing entity @e[type=#incendium:mobs,tag=!laser,distance=..10,sort=nearest,limit=1] eyes if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch

execute if score #hit in.fire_laser matches 0 if predicate incendium:random/70 if score #distance2 in.fire_laser <= $max_branch in.dummy positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch

execute if score #hit in.fire_laser matches 0 if score #distance2 in.fire_laser > $max_branch in.dummy positioned ^ ^ ^0.2 if predicate incendium:random/other/x if predicate incendium:random/0_001 run summon lightning_bolt
