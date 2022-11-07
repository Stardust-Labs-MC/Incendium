# > @s: tnt

execute rotated ~ -60 run function incendium:misc/aim

# aim and speed up tnt
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 1500
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 500
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 1500
