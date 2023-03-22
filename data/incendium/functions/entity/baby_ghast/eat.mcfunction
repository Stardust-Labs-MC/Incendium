# from: ./feed
# @s: baby ghast

# toggle
scoreboard players set %ghastling in.dummy 0
scoreboard players set @s in.timer 400
execute if entity @s[tag=in.following] run scoreboard players set %ghastling in.dummy 1
tag @s add in.following
execute if score %ghastling in.dummy matches 1 run playsound minecraft:entity.ghast.scream player @a[distance=..8] ~ ~ ~ 2 0.7 0
execute if score %ghastling in.dummy matches 1 run tag @s remove in.following

# audiovisuals
playsound minecraft:entity.ghast.scream player @a[distance=..8] ~ ~ ~ 2 1 0
playsound minecraft:item.honey_bottle.drink player @a[distance=..8] ~ ~ ~ 2 0.7
playsound minecraft:item.honey_bottle.drink player @a[distance=..8] ~ ~ ~ 2 1
playsound minecraft:item.honey_bottle.drink player @a[distance=..8] ~ ~ ~ 2 1.3
execute if score %ghastling in.dummy matches 0 run particle minecraft:heart ~ ~0.6 ~ 0.3 0.3 0.3 0.04 10 force
execute if score %ghastling in.dummy matches 1 run particle minecraft:cloud ~ ~0.8 ~ 0.3 0.3 0.3 0.04 10 force

# reset toggle
scoreboard players set %ghastling in.dummy 0

# advancement reset
advancement grant @a[distance=..8] only incendium:quartz_flats/feed_ghastling