scoreboard players set #hit in.fire_laser 1
execute as @e[type=blaze,tag=in.sentry,distance=..5.5] run data merge entity @s {Invulnerable:1b}
execute as @e[type=#incendium:sentry_targets,sort=nearest,distance=..4] at @s facing entity @e[type=blaze,tag=in.sentry,tag=in.sentry_active,sort=nearest,limit=1,distance=..50] eyes run summon minecraft:firework_rocket ^ ^1.5 ^0.75 {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;4971507]},{Type:0,Flicker:0,Trail:0,Colors:[I;4951795]}]}}}}
advancement grant @s only incendium:infernal_dunes/pipeline/unlimited_power

schedule function incendium:entity/sentry/clear_invulnerable 2t replace
