# > @s: arrow

execute facing entity @p[tag=in.valid_player] eyes rotated ~ ~-1 run function incendium:misc/aim

# aim and speed up arrow
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 2400
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 2400
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 2400

# air toggle
data modify entity @s Air set value 1s

# tags
tag @s add in.checked
tag @s add in.air_toggle
tag @s add in.temp_arrow
