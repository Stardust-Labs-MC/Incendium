scoreboard players set #hit in.fire_laser 0
tag @s add laser
#execute rotated as @s positioned ^ ^1 ^1 run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:fire_charge,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4971507]}]}}}}
#execute rotated as @s positioned ~0.5 ~1 ~0.5 run 
#execute as @e[distance=..4,limit=1] at @s facing entity @e[type=blaze,tag=sentry,tag=attacking,sort=nearest,limit=1,distance=..50] eyes run 
execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;39679]}]}}},Tags:["in.sentrys_wrath_firework"]}
execute if entity @e[type=blaze,tag=in.sentry,distance=..5] run advancement grant @p[distance=..30,tag=in.self] only incendium:ash_barrens/duel_of_the_fates

execute at @s positioned ~ ~1 ~ if score #hit in.fire_laser matches 0 if predicate incendium:random/85 if score #distance2 in.fire_laser matches 0..250 positioned ^ ^ ^0.2 facing entity @e[type=#incendium:mobs_no_player,tag=!laser,distance=..10,sort=nearest,limit=1] eyes if block ~ ~ ~ #incendium:airs run function incendium:item/sentrys_wrath/short_lightning/ray
#execute if predicate incendium:random/50 run data merge entity @s {Fire:80s}
#execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.05 100 force
#effect give @s instant_damage 1 1
