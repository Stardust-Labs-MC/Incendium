# aec loop

scoreboard players add $attack_alt in.inferno 1
execute as @e[type=area_effect_cloud,tag=in.direct_atk_alt,limit=1] at @s run function incendium:hovering_inferno/spell/firework/direct_alt/aec
