scoreboard players set #hit in.fire_laser 0
tag @s add laser

execute at @s run summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,-0.25,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;10483711]},{Type:4,Flicker:0,Trail:0,Colors:[I;10476799]},{Type:4,Flicker:0,Trail:0,Colors:[I;10994687]},{Type:4,Flicker:0,Trail:0,Colors:[I;10991615]},{Type:4,Flicker:0,Trail:0,Colors:[I;9603583]}]}}},Tags:["in.firework"]}

data modify entity @s[type=creeper] powered set value 1b

execute if predicate incendium:random/other/x if predicate incendium:random/other/x if predicate incendium:random/50 run summon lightning_bolt
