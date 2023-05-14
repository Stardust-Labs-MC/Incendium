playsound minecraft:item.armor.equip_generic player @a[distance=..30] ~ ~ ~ 4 0.85 0.75
item replace entity @s weapon.offhand with minecraft:splash_potion{Potion:"minecraft:slowness"}
tag @s add in.slowness
tag @s add in.chose_action
tag @s add in.offhand_item