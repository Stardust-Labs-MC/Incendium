particle minecraft:item golden_apple ~ ~1.125 ~ 0.1 0.1 0.1 0.05 30 force
playsound minecraft:entity.generic.eat player @a[distance=..12] ~ ~ ~ 1 0.7 0.2
playsound minecraft:entity.player.burp player @a[distance=..12] ~ ~ ~ 1 0.9 0.2
item replace entity @s weapon.offhand with minecraft:air
effect give @s regeneration 6 1
effect give @s absorption 120 0
tag @s add in.chose_action
tag @s remove in.golden_apple
tag @s remove in.mainhand_item