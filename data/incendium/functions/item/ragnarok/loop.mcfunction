# looped by ./arrow
# it's own cmd limit :D

execute as @e[type=marker,tag=in.ragnarok,limit=1] at @s run function incendium:item/ragnarok/ray

execute as @e[type=firework_rocket,tag=in.firework,tag=!in.checked] run function incendium:misc/firework

execute if entity @e[type=marker,tag=in.ragnarok] run schedule function incendium:item/ragnarok/loop 1t replace
