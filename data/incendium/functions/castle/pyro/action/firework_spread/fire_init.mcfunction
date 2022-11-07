# @s: firework (in.fire)

function incendium:misc/aim

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 1200
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 1200
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 1200

tag @s add in.checked
tag @s add in.timed_death
