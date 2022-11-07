# from: ../../main
# @s: paratrooper

data merge entity @s {FallFlying:1b,NoGravity:0b}

tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] feet
execute at @s run function incendium:misc/aim

execute store result entity @s Motion[0] double 0.001 run data get storage incendium:temp aim.vector[0] 1400
execute store result entity @s Motion[1] double 0.001 run data get storage incendium:temp aim.vector[1] 1400
execute store result entity @s Motion[2] double 0.001 run data get storage incendium:temp aim.vector[2] 1400

playsound minecraft:entity.firework_rocket.launch player @a[distance=..70] ~ ~ ~ 1 1.0 0.3

tag @s add in.jumped
