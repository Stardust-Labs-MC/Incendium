playsound minecraft:item.armor.equip_gold player @a[distance=..30] ~ ~ ~ 4 0.85 0.75
item replace entity @s weapon.mainhand with minecraft:potion{Potion:"minecraft:fire_resistance"}
tag @s add in.fire_resistance
tag @s add in.chose_action
tag @s add in.mainhand_item