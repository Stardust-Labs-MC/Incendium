# from: ../mob/init
# @s: pyro

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Piglin Pyromancer",{"translate":"incendium.mob.castle.pyro.name"}]}'

data modify entity @s ArmorItems[1].tag.Enchantments append value {id:"minecraft:blast_protection",lvl:3s}
data modify entity @s ArmorItems[2].tag.Enchantments append value {id:"minecraft:blast_protection",lvl:3s}

tag @s add in.activate_mid
