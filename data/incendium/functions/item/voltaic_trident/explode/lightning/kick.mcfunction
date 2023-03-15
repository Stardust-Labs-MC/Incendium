execute facing entity @e[type=area_effect_cloud,tag=in.trident_explosion,limit=1,sort=nearest] eyes rotated ~ 30 run function incendium:misc/aim

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] -1100
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] -1100
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] -1100
