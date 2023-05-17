# from: ./on_hit
# @s: entities caught in shockwave

data merge entity @s {Fire:60s}

execute facing entity @p[gamemode=!spectator] eyes rotated ~ 30 run function incendium:misc/aim

# aim and speed up arrow
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] -2200
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] -2200
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] -2200
