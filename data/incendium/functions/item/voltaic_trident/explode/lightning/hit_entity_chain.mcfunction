scoreboard players set #hit in.fire_laser 0
execute at @s positioned ~ ~1 ~ run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;16777215]}]}}},Tags:["in.firework"]}

function incendium:item/voltaic_trident/explode/lightning/kick
tag @s add laser
