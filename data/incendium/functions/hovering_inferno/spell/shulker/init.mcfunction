# init shulker bullet

data modify entity @s {} merge from storage incendium:temp bullet
tag @s add in.checked

execute if data entity @s {Glowing:1b} run tag @s add in.last_bullet
