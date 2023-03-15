# > @s: firework

execute facing entity @p[tag=in.valid_player] eyes rotated ~ ~-1 run function incendium:misc/aim

# aim and speed up firework
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 1800
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 1800
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 1800

# air toggle
data modify entity @s Air set value 1s

# tags
tag @s add in.checked
tag @s add in.air_toggle
tag @s add in.temp_arrow
tag @s add in.timed_death
