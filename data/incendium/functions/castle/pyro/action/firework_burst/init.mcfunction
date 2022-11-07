# @s: firework (in.fire_slow)

function incendium:misc/aim

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 900
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 900
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 900

tag @s add in.checked
tag @s add in.ticking_entity
tag @s add in.timed_death
