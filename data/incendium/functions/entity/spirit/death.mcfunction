# from: mob/main
# @s = marker

stopsound @a[distance=..16] * entity.vex.death

playsound minecraft:entity.phantom.death hostile @a[distance=..16] ~ ~ ~ 1 1.37

particle minecraft:sculk_soul ~ ~ ~ 1 1 1 .08 15 normal

kill @s