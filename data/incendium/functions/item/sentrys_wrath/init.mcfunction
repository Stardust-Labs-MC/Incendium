# from: ./summon
# @s: marker

data modify entity @s Rotation set from storage incendium:temp player.Rotation

data modify entity @s data.player.UUID set from storage incendium:temp player.UUID

tag @s add in.checked
tag @s add in.ticking_entity
