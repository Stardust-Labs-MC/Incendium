execute if score #hit in.fire_laser matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#incendium:mobs,tag=!laser,dx=0,sort=nearest] if score #hit in.fire_laser matches 0 if score #distance in.fire_laser matches 10.. positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function incendium:item/ragnarok/lightning/hit_entity_chain

scoreboard players add #distance in.fire_laser 1

execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #incendium:airs run summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,-0.25,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;10483711]},{Type:4,Flicker:0,Trail:0,Colors:[I;10476799]},{Type:4,Flicker:0,Trail:0,Colors:[I;10994687]},{Type:4,Flicker:0,Trail:0,Colors:[I;10991615]},{Type:4,Flicker:0,Trail:0,Colors:[I;9603583]}]}}},Tags:["in.ragnarok_firework"]}

execute positioned ^ ^ ^0.2 unless block ~ ~ ~ #incendium:airs if predicate incendium:random/other/x if predicate incendium:random/50 run summon lightning_bolt

execute if predicate incendium:random/70 run particle minecraft:end_rod ~ ~ ~ 0.01 0.01 0.01 0.0 1 force

execute if score #hit in.fire_laser matches 0 if predicate incendium:random/10 if score #distance in.fire_laser matches ..50 positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch

execute if score #hit in.fire_laser matches 0 if predicate incendium:random/25 if score #distance in.fire_laser matches 50.. if score #distance in.fire_laser <= $max_distance in.dummy positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/branch

execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser <= $max_distance in.dummy positioned ^ ^ ^0.2 rotated ~ ~ if block ~ ~ ~ #incendium:airs run function incendium:item/ragnarok/lightning/ray

execute if score #hit in.fire_laser matches 0 if score #distance in.fire_laser > $max_distance in.dummy positioned ^ ^ ^0.2 if predicate incendium:random/other/x if predicate incendium:random/0_01 run summon lightning_bolt
