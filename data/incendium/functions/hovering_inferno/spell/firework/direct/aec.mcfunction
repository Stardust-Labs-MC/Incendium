# looped every 20t by: ./loop

execute if score $attack in.inferno matches 0 run tp @s ~ ~ ~ facing entity @p[tag=in.survival_player,distance=1..50,predicate=incendium:dimension/nether]

tp @s ^ ^ ^3
execute at @s run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11750700]},{Type:4,Flicker:0,Trail:0,Colors:[I;11757612]}]}}}}
execute at @a[tag=in.survival_player,distance=..4,predicate=incendium:dimension/nether] run summon minecraft:small_fireball ~ ~3 ~ {Motion:[0.0,-2.0,0.0],Silent:1b}

# looping
execute if score $attack in.inferno matches ..10 run schedule function incendium:hovering_inferno/spell/firework/direct/loop 2t
execute if score $attack in.inferno matches 11 run kill @s
