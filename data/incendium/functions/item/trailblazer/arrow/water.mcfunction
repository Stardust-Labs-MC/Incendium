# from ./main
# @s: arrow
# water

particle minecraft:smoke ~ ~ ~ .01 .85 .01 0.01 20 force
particle minecraft:large_smoke ~ ~ ~ .01 1.25 .01 0.05 20 force

tag @s remove in.ticking_entity

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.65
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.5 0.1
