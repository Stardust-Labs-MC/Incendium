# looped every 20t by: ./loop

execute facing entity @p[tag=in.survival_player,distance=..50,predicate=incendium:dimension/nether] eyes run tp @s ^ ^ ^0.185

execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.025 10 force
execute if entity @a[distance=..1.8,predicate=incendium:dimension/nether] at @s run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;52991]},{Type:0,Flicker:0,Trail:0,Colors:[I;49151]},{Type:0,Flicker:0,Trail:0,Colors:[I;45055]},{Type:0,Flicker:0,Trail:0,Colors:[I;38655]},{Type:0,Flicker:0,Trail:0,Colors:[I;32255]},{Type:0,Flicker:0,Trail:0,Colors:[I;25855]},{Type:0,Flicker:0,Trail:0,Colors:[I;19455]},{Type:0,Flicker:0,Trail:0,Colors:[I;13055]},{Type:0,Flicker:0,Trail:0,Colors:[I;6655]},{Type:0,Flicker:0,Trail:0,Colors:[I;255]}]}}}}

execute at @s if entity @a[tag=in.survival_player,distance=..1.8,predicate=incendium:dimension/nether] run scoreboard players set $attack_alt in.inferno 51

# looping
execute if score $attack_alt in.inferno matches ..50 run schedule function incendium:hovering_inferno/spell/firework/direct_alt/loop 2t
execute if score $attack_alt in.inferno matches 51.. run kill @s
