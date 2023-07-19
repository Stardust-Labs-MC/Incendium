# from: ./explode
# @s: firework
# inits fireworks generated :D

execute if predicate incendium:random/50 if entity @s[nbt={Fire:-20s}] run data merge entity @s {Fire:80s}

data modify entity @s Owner set from storage incendium:temp player.UUID

tag @s add in.checked
