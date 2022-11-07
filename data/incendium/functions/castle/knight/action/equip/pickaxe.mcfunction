playsound minecraft:item.armor.equip_iron player @a[distance=..15] ~ ~ ~ 4 0.85 0.75
item replace entity @s[tag=in.iron] weapon.mainhand with minecraft:iron_pickaxe
item replace entity @s[tag=in.gold] weapon.mainhand with minecraft:golden_pickaxe
item replace entity @s[tag=in.diamond] weapon.mainhand with minecraft:diamond_pickaxe
item replace entity @s[tag=in.netherite] weapon.mainhand with minecraft:netherite_pickaxe

tag @s add in.pick
tag @s add in.chose_action
tag @s remove in.sword
