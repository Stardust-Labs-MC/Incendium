# from: ../mob/main
# @s: blacksmith

tag @s add in.knight
tag @s add in.netherite
tag @s remove in.blacksmith

item replace entity @s weapon.mainhand with netherite_sword
item replace entity @s weapon.offhand with air

execute as @e[type=piglin_brute,tag=in.guard,distance=..25] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p[tag=in.valid_player] UUID
