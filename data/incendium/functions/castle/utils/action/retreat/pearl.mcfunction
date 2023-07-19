# pearl logic
# @s: pearl
# init pearl

function incendium:misc/aim
execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 2000
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 2000
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 2000

scoreboard players operation @s in.eid = $eid in.dummy 

data modify entity @s Owner set from storage incendium:temp entity.UUID

tag @s add in.checked
tag @s add in.ticking_entity
tag @s add in.air_toggle
