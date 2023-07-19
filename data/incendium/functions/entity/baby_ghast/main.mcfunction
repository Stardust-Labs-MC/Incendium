# from: entity/mobs/main
# @s: baby ghast (vex)

# figure where you want to face
execute unless entity @e[type=fireball,sort=nearest,distance=..50,limit=1] run tp @s ~ ~ ~ facing entity @p[distance=..8] eyes
execute unless entity @s[tag=in.following] run tp @s ~ ~ ~ facing entity @e[type=fireball,sort=nearest,distance=..50,limit=1] feet

# raycast start
execute unless entity @s[tag=in.following] positioned ~ ~0.6 ~ facing entity @e[type=fireball,sort=random,distance=..35,limit=1] feet run function incendium:entity/baby_ghast/ray/start

# stop ghasts in place + remove sounds
execute as @e[type=ghast,distance=..12] run attribute @s minecraft:generic.follow_range base set 0.0001
execute unless entity @s[tag=in.following] run stopsound @a[distance=..40] * minecraft:entity.ghast.shoot
execute unless entity @s[tag=in.following] run stopsound @a[distance=..40] * minecraft:entity.ghast.warn

# teleports towards
execute if entity @s[tag=in.following] if entity @a[distance=2..24] facing entity @p[distance=2..24] feet run tp @s ^ ^ ^0.17

# Movement
execute if score @s in.timer matches 1.. run scoreboard players remove @s in.timer 1
execute if score @s in.timer matches ..0 if entity @s[tag=in.following] run playsound minecraft:entity.ghast.scream player @a[distance=..8] ~ ~ ~ 2 0.7 0
execute if score @s in.timer matches ..0 if entity @s[tag=in.following] run tag @s remove in.following

# visual
particle minecraft:end_rod ~ ~1 ~ 0.2 0.01 0.2 0 1 force
particle minecraft:flame ~ ~1.25 ~ 0.05 0.05 0.05 0 1 force

# death
execute if score @s in.lifetime matches 1.. run scoreboard players remove @s in.lifetime 1
execute if score @s in.lifetime matches ..0 unless entity @e[type=allay,distance=..2,tag=in.baby_head] run kill @s