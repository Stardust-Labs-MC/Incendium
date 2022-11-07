# from: ./explode
# @s: entities being kicked

execute facing entity @e[type=area_effect_cloud,tag=in.sentrys_wrath,limit=1,sort=nearest] feet rotated ~ 45 run function incendium:misc/aim

# aim and speed up arrow
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] -2200
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] -2200
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] -2200
