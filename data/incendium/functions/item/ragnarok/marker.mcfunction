# from: ./on_shot
# @s: arrow

scoreboard players operation @s in.ragnarok = $ragnarok in.dummy

tp @s ~ ~ ~ ~ ~

data modify entity @s Rotation set from storage incendium:temp player.Rotation

tag @s add in.checked

playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 2 2
