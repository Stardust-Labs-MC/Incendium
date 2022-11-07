# from ./update
# @s: helper marker (at @s is still player)

data modify entity @s Rotation set value [0.0f, 0.0f]
execute store result entity @s Rotation[0] float 1 run scoreboard players get $scouts_helmet in.dummy

# update rotation as well
execute rotated as @s positioned ^ ^ ^0.6 run particle minecraft:dust_color_transition 1 0 0 1.4 0 1 1.2 ~ ~0.6 ~ 0 0 0 1 2 force
