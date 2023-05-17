# from: ../mob/main
# @s: pyro

execute rotated ~ ~ run function incendium:misc/aim

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 1400
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 1400
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 1400


tag @s add in.chose_action
tag @s add in.used_leap
