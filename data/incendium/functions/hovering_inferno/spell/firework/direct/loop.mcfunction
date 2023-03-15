# aec loop

execute as @e[type=area_effect_cloud,tag=in.direct_atk,limit=1] at @s run function incendium:hovering_inferno/spell/firework/direct/aec
scoreboard players add $attack in.inferno 1
