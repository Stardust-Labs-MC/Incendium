# from ./shot
# @s: player

tellraw @s [{"translate": "Ragnarok", "color": "#CCEBDB", "bold": true}, " ", {"translate": "cannot be rapid fired", "color":"#ABC4B8", "bold": false}]

summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,-0.25,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;10483711]},{Type:4,Flicker:0,Trail:0,Colors:[I;10476799]},{Type:4,Flicker:0,Trail:0,Colors:[I;10994687]},{Type:4,Flicker:0,Trail:0,Colors:[I;10991615]},{Type:4,Flicker:0,Trail:0,Colors:[I;9603583]}]}}},Tags:["in.ragnarok_firework"]}

playsound item.trident.thunder player @a[distance=..16] ~ ~ ~ 2 2
playsound item.trident.thunder player @a[distance=..16] ~ ~ ~ 2 .1

summon lightning_bolt

particle minecraft:flash ~ ~ ~ 0 0 0 10 10 force
