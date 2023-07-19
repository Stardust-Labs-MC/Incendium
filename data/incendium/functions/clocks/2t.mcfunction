# clock: every 2t

schedule function incendium:clocks/2t 2t replace

execute as @e[type=#incendium:castle,tag=in.castle,tag=in.ticking_entity] at @s run function incendium:castle/mob/2t

effect clear @a[tag=in.hazmat] poison

execute as @e[type=area_effect_cloud,tag=in.thunder] at @s run function incendium:item/voltaic_trident/explode/lightning/2t
