playsound minecraft:item.armor.equip_generic player @a[distance=..30] ~ ~ ~ 4 0.85 0.75
item replace entity @s weapon.mainhand with minecraft:flint_and_steel
#execute facing entity @p[distance=..30] eyes run function incendium:piglin_mage/pyro/actions/leap_reverse
tag @s add in.flint_and_steel
tag @s add in.chose_action
tag @s add in.offhand_item