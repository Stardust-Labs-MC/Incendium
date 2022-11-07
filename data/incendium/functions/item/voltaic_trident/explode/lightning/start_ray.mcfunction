tag @s add laser
scoreboard players set #hit in.fire_laser 0
scoreboard players set #distance in.fire_laser 0
scoreboard players set #distance2 in.fire_laser 0

execute positioned ~ ~1 ~ run function incendium:item/voltaic_trident/explode/lightning/ray
#tellraw @a [{"text":"D2 Is: "},{"score":{"name":"#distance2","objective":"in.fire_laser"}}]
tag @s remove laser

kill @s[type=area_effect_cloud]
