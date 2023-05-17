scoreboard players add $distance in.fire_laser 1

execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:withersbane_targets,tag=!in.hit,distance=..4,sort=nearest] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] unless entity @s[tag=in.hit] run function incendium:item/withersbane/ray/hit

execute if predicate incendium:random/90 run particle minecraft:end_rod ~ ~ ~ 0.06 0.06 0.06 0.007 1 force

execute if score $distance in.fire_laser matches ..80 if block ~ ~ ~ #incendium:airs positioned ^ ^ ^1 rotated ~ ~ run function incendium:item/withersbane/ray/iter
