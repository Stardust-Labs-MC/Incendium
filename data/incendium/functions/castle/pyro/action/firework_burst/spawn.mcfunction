summon minecraft:firework_rocket ~ ~ ~ {Tags:["in.fire_slow"],Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1b,LifeTime:90,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;16711680]},{Type:4,Flicker:0,Trail:0,Colors:[I;16733184]},{Type:4,Flicker:0,Trail:0,Colors:[I;16751872]}]}}}}
#playsound minecraft:item.trident.throw player @a[distance=..30] ~ ~ ~ 0.35 1.5 0.35
execute as @e[type=firework_rocket,tag=in.fire_slow,tag=!in.checked,distance=..1,limit=1] run function incendium:castle/pyro/action/firework_burst/init
