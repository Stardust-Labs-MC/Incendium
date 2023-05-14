effect clear @s
playsound minecraft:entity.generic.drink player @a[distance=..30] ~ ~ ~ 2 0.7 0.6
item replace entity @s weapon.mainhand with bucket
tag @s add in.chose_action
tag @s remove in.milk
tag @s remove in.mainhand_item