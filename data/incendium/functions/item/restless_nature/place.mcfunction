# from: ./main

execute store result score @s in.dummy run placefeature incendium:ash_barrens/tree_bend

execute if score @s in.dummy matches 1 run particle minecraft:block minecraft:soul_sand ~ ~-.5 ~ .8 .125 .8 1 15 normal
execute if score @s in.dummy matches 1 run particle minecraft:block minecraft:soul_sand ~ ~-.5 ~ .8 .125 .8 1 15 normal

execute if score @s in.dummy matches 1 run playsound minecraft:block.fungus.place block @a[distance=..16] ~ ~ ~ 1 0.85
execute if score @s in.dummy matches 1 run playsound minecraft:block.fungus.place block @a[distance=..16] ~ ~ ~ 1 1.0
execute if score @s in.dummy matches 1 run playsound minecraft:block.fungus.place block @a[distance=..16] ~ ~ ~ 1 1.15
