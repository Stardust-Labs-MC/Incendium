# leap
# @s: castle mob

execute rotated ~ ~25 run function incendium:misc/aim

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 1400
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 1400
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 1400
