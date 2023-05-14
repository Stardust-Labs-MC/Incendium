scoreboard players set #hit in.fire_laser 0
tag @s add laser
#execute rotated as @s positioned ^ ^1 ^1 run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:fire_charge,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4971507]}]}}}}
#execute rotated as @s positioned ~0.5 ~1 ~0.5 run 
#execute as @e[distance=..4,limit=1] at @s facing entity @e[type=blaze,tag=sentry,tag=attacking,sort=nearest,limit=1,distance=..50] eyes run 
execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;39679]}]}}},Tags:["in.sentrys_wrath_firework"]}
execute if predicate incendium:random/50 run data merge entity @s[nbt={Fire:-20s}] {Fire:80s}
