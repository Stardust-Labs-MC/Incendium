# explodee

# kill @e[type=area_effect_cloud,tag=in.voltaic_trident,distance=..5]

tag @s remove in.live
data merge entity @s {DealtDamage:1b}
tag @s add in.dealt_damage
function incendium:item/voltaic_trident/explode/boom

execute as @e[type=firework_rocket,tag=in.firework,tag=!in.checked] run function incendium:misc/firework
