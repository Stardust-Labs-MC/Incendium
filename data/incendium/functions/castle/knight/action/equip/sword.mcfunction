playsound minecraft:item.armor.equip_iron player @a[distance=..15] ~ ~ ~ 4 0.85 0.75
execute as @s[tag=in.iron] run item replace entity @s weapon.mainhand with minecraft:iron_sword
execute as @s[tag=in.gold] run item replace entity @s weapon.mainhand with minecraft:golden_sword
execute as @s[tag=in.diamond] run item replace entity @s weapon.mainhand with minecraft:diamond_sword
execute as @s[tag=in.netherite] run item replace entity @s weapon.mainhand with minecraft:netherite_sword

tag @s add in.sword
tag @s add in.chose_action
tag @s remove in.pick
