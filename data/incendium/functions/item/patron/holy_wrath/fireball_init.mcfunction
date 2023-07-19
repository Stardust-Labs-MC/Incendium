# from ./bomb
# @s: small_fireball from cluster

function incendium:misc/aim

data modify entity @s direction set from storage incendium:temp aim.vector
data modify entity @s Motion set from storage incendium:temp aim.vector

data modify entity @s Item.tag.player.UUID set from storage incendium:temp player.UUID

tag @s add in.ticking_entity
tag @s add in.air_toggle
