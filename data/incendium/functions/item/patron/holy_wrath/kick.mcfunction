# from: ./explode
# @s: player

execute rotated ~ 32 run function incendium:misc/aim

execute store result entity @s Motion[0] double -2.1 run data get storage incendium:temp aim.vector[0]
# execute store result entity @s Motion[1] double -2.1 run data get storage incendium:temp aim.vector[1]
execute store result entity @s Motion[2] double -2.1 run data get storage incendium:temp aim.vector[2]
