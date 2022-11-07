# from: ../main
# @s: paratrooper

tag @s add in.knight
tag @s add in.netherite
tag @s add in.guard
tag @s remove in.shock_troop
tag @s remove in.paratrooper

item replace entity @s armor.chest with air
item replace entity @s[tag=reinforcement] armor.chest with golden_chestplate

data merge entity @s {NoGravity:0b,FallFlying:0b}

#execute as @e[type=piglin_brute,tag=guard,distance=..25] run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p UUID
