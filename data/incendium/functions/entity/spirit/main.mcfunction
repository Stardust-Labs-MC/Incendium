# from: entity/mob/main
# @s: spirit

tp @e[tag=in.spirit_death,sort=nearest,limit=1,distance=..1] ~ ~ ~

stopsound @a[distance=..16] * entity.vex.ambient
execute if predicate incendium:random/0_2 run playsound minecraft:entity.wither_skeleton.death hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if predicate incendium:random/0_2 run playsound minecraft:entity.allay.item_given hostile @a[distance=..16] ~ ~ ~ 0.75 0.5
execute if predicate incendium:random/0_2 run playsound minecraft:entity.piglin.retreat hostile @a[distance=..16] ~ ~ ~ 0.75 0.5

particle minecraft:dust 0.5 0.5 0.5 1 ^0 ^0.5 ^-0.25 0.25 0.25 0.25 0.025 4 normal
particle minecraft:dust 0 0.969 1 1 ^-0.2 ^0.8 ^0.1 0 0 0 0 1 force
particle minecraft:dust 0 1 0.8 1 ^0.2 ^0.8 ^0.1 0 0 0 0 1 force

execute if score @s in.lifetime matches ..0 run tp @s ~ -20 ~
execute if score @s in.lifetime matches ..0 run kill @s