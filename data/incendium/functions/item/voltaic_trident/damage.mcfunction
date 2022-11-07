# from ./main

kill @e[type=area_effect_cloud,distance=..5,tag=in.voltaic_trident]

scoreboard players operation $id in.dummy = @s in.trident_id
data modify storage incendium:temp player.UUID set from entity @s Trident.tag.player.UUID

summon area_effect_cloud ~ ~0.5 ~ {Duration:400,Tags:["in.trident_explosion","in.ticking_entity"]}
execute as @e[type=area_effect_cloud,tag=in.trident_explosion,tag=!in.checked,distance=..1,limit=1] run function incendium:item/voltaic_trident/explode/init

data remove entity @s Trident.tag.player

tag @s add in.dealt_damage
tag @s remove in.live
