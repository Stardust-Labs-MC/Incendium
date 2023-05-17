# from: entity/mob/main
# @s: entity

execute if score $castle.tick in.state matches 0 run tellraw @a[distance=..8,tag=in.castle_debug] {"entity": "@s", "nbt": "Tags"}

# each set of entities are ticked every 4 ticks
#  but they are offset from each other

data modify entity @s[tag=in.NoAI] NoAI set value 0b
tag @s remove in.NoAI

item replace entity @s[type=wandering_trader,tag=in.retreat_trader] weapon.mainhand with air 
item replace entity @s[type=wandering_trader,tag=in.retreat_trader] weapon.offhand with air

execute if score $castle.tick in.state matches 0 if entity @s[tag=in.archer, tag=in.active] run function incendium:castle/archer/main
execute if score $castle.tick in.state matches 0 if entity @s[tag=in.paratrooper, tag=in.active] run function incendium:castle/paratrooper/main

execute if score $castle.tick in.state matches 1 if entity @s[tag=in.pyro, tag=in.active] run function incendium:castle/pyro/main

execute if score $castle.tick in.state matches 2 if entity @s[tag=in.alchemist, tag=in.active] run function incendium:castle/alchemist/main

execute if score $castle.tick in.state matches 3 if entity @s[tag=in.blacksmith, tag=in.active] run function incendium:castle/blacksmith/main

execute if score $castle.tick in.state matches 3 if entity @s[tag=in.knight, tag=in.active] run function incendium:castle/knight/main

execute if entity @s[tag=in.retreating] run function incendium:castle/utils/action/retreat/main
