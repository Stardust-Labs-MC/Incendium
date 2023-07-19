# > action: archer shoots firework

# firework manipulation
summon minecraft:firework_rocket ~ ~1 ~ {Tags:["in.castle_firework_init"],Silent:0b,Motion:[0.0,0.0,0.0],ShotAtAngle:1b,LifeTime:50,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;6710886]},{Type:4,Flicker:0,Trail:0,Colors:[I;3355443]},{Type:4,Flicker:0,Trail:0,Colors:[I;0]}]}}}}

execute positioned ~ ~1.5 ~ as @e[type=firework_rocket,distance=..1,tag=in.castle_firework_init,limit=1] at @s run function incendium:castle/archer/action/shoot/firework_init

# audiovisual
playsound minecraft:item.crossbow.shoot player @a[distance=..40] ~ ~ ~ 2 0.9 0.05

function incendium:castle/archer/action/disengage
tag @s add in.chose_action