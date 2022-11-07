playsound minecraft:item.armor.equip_generic player @a[distance=..30] ~ ~ ~ 4 0.85 0.75
item replace entity @s weapon.mainhand with minecraft:firework_rocket
#execute facing entity @p[distance=..12] eyes run function incendium:castle/pyro/actions/leap_reverse
tag @s add in.firework
tag @s add in.chose_action
tag @s add in.offhand_item