# from: ./<type>
# @s: potion

execute facing entity @p[tag=in.valid_player] eyes rotated ~ ~-8 run function incendium:misc/aim
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 500
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 500
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 500

data modify entity @s NoGravity set value 0b
