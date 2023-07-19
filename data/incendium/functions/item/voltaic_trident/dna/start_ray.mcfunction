tag @s add laser
scoreboard players set #hit in.fire_laser 0
scoreboard players set $distance in.fire_laser 0
execute facing entity @e[type=area_effect_cloud,tag=in.voltaic_trident,tag=in.right,distance=..5,limit=1] feet run function incendium:item/voltaic_trident/dna/ray
tag @s remove laser
