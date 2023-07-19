# from: ./summon
# @s: hovering inferno

tag @s add in.checked
tag @s add in.inferno_entity

data modify storage incendium:main inferno.UUID set from entity @s UUID

forceload add ~ ~
