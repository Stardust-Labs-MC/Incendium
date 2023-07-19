# firework attack normal

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.firework.spread","fallback":"Firework: Spread"}

function incendium:hovering_inferno/spell/kill/bullets
playsound minecraft:entity.evoker.prepare_summon player @a[distance=..40] ~ ~ ~ 2 0.9

summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[1.0,0.1,0.0],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,0.1,1.0],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[-1.0,0.1,0.0],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,0.1,-1.0],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.71,-0.1,0.71],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.71,-0.1,-0.71],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[-0.71,-0.1,-0.71],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[-0.71,-0.1,0.71],ShotAtAngle:1,LifeTime:16,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:0,Flicker:0,Trail:0,Colors:[I;11743532]}]}}}}
