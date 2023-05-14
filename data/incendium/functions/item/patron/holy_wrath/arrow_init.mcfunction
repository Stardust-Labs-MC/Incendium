# from ./fire
# @s: arrow being shot by player

data merge entity @s {pickup:0b,PierceLevel:4b,damage:3.0d,crit:0b}

execute store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] 410
execute store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] 410
execute store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] 410

data modify entity @s NoGravity set value 1b

# #> TODO: this can be simplified if u want to simply speed up the arrow, etc..
# # aim arrow (speed up in this case)
# execute in minecraft:overworld positioned 0.0 0.0 0.0 rotated ~ ~-1 run tp 69400092-c238-50e9-9af7-5389d31a320b ^ ^ ^2.4
# data modify entity @s Motion set from entity 69400092-c238-50e9-9af7-5389d31a320b Pos

# tags
tag @s add in.checked
tag @s add in.cluster
tag @s add in.ticking_entity
tag @s add in.air_toggle
