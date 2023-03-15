# from: ./<type>
# @s: potion

execute facing entity @p[tag=in.valid_player] eyes rotated ~ ~-5 run function incendium:misc/aim
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 800
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 800
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 800

data modify entity @s NoGravity set value 0b
