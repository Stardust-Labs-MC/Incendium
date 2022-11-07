execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:mobs,tag=!laser,dx=0,sort=nearest] if score #distance in.fire_laser matches 10.. positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:item/firestorm/ray/hit_chain

scoreboard players add #distance in.fire_laser 1

execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #incendium:airs run summon minecraft:firework_rocket ~ ~0.2 ~ {Silent:1b,Motion:[0.0,-0.2,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;16725028]},{Type:4,Flicker:0,Trail:0,Colors:[I;16733476]},{Type:4,Flicker:0,Trail:0,Colors:[I;16742692]},{Type:4,Flicker:0,Trail:0,Colors:[I;16751908]}]}}},Tags:["in.firestorm_firework"]}

execute if predicate incendium:random/50 run particle minecraft:flame ~ ~ ~ 0.01 0.01 0.01 0.001 1 force

execute if score #hit in.fire_laser matches 0 if predicate incendium:random/5 if score #distance in.fire_laser matches ..50 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/firestorm/ray/branch
execute if score #hit in.fire_laser matches 0 if predicate incendium:random/20 if score #distance in.fire_laser matches 50..130 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/firestorm/ray/branch

execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser matches ..115 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/firestorm/ray/iter
