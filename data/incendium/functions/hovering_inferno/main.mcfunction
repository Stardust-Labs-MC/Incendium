# self-looping every tick

schedule function incendium:hovering_inferno/main 1t replace

scoreboard players add $shield.pivot in.inferno 3
execute if data storage incendium:main inferno{mode:'low'} run scoreboard players add $shield.pivot in.inferno 3
execute if data storage incendium:main inferno{mode:'final'} run scoreboard players add $shield.pivot in.inferno 7

execute if score $shield.pivot in.inferno matches 360.. run scoreboard players set $shield.pivot in.inferno 0

execute as @e[tag=in.inferno_entity] at @s run function incendium:hovering_inferno/entity
execute as @a[tag=in.inferno_fight] at @s run function incendium:hovering_inferno/player/main