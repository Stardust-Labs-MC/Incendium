# from: entity/mob/init (called once)
# @s: entity

# compatibility
tag @s[tag=archer] add in.archer
tag @s[tag=pyro] add in.pyro
tag @s[tag=alchemist] add in.alchemist
tag @s[tag=blacksmith] add in.blacksmith
tag @s[tag=knight] add in.knight
tag @s[tag=shocker] add in.paratrooper
tag @s[tag=shock_troop] add in.paratrooper
tag @s[tag=scout] add in.scout

data merge entity @s {ArmorDropChances:[-327.0f,-327.0f,-327.0f,-327.0f]}
data merge entity @s {HandDropChances:[-327.0f,-327.0f]}


execute if entity @s[tag=in.archer] run function incendium:castle/archer/init
execute if entity @s[tag=in.pyro] run function incendium:castle/pyro/init
execute if entity @s[tag=in.alchemist] run function incendium:castle/alchemist/init
execute if entity @s[tag=in.blacksmith] run function incendium:castle/blacksmith/init
execute if entity @s[tag=in.knight] run function incendium:castle/knight/init
execute if entity @s[tag=in.paratrooper] run function incendium:castle/paratrooper/init
execute if entity @s[tag=in.scout] run function incendium:castle/scout/init

team join in.castle @s

# add to every entity, we can remove it if we don't need it (scout)
tag @s add in.ticking_entity
