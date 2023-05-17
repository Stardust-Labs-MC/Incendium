# from entity/other/main
# @s: cluster arrow

scoreboard players add @s in.timer 1

execute if entity @s[nbt={inGround:1b}] run function incendium:item/patron/holy_wrath/explode

data modify entity @s[scores={in.timer=4..}] NoGravity set value 0b

particle end_rod ~ ~ ~ 0 0 0 0 1 force
