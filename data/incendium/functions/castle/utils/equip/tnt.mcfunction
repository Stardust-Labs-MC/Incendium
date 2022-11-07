playsound minecraft:item.armor.equip_generic player @a[distance=..30] ~ ~ ~ 4 0.85 0.75
item replace entity @s weapon.mainhand with minecraft:tnt
#execute facing entity @p[distance=..30] eyes run function incendium:piglin_mage/pyro/actions/leap_reverse
tag @s add in.tnt
tag @s add in.chose_action
tag @s add in.mainhand_item