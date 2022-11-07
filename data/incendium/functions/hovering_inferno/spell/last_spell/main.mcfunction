# from: ./prepare
# @s: inferno

tellraw @a[tag=in.admin] "  Final Phase -- Main"

execute positioned ~ 50 ~ at @e[type=marker,tag=in.altar,sort=nearest,distance=..50] run tp @s ~ ~1.5 ~

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..50] ~ ~ ~ 2 0.6 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..50] ~ ~ ~ 2 0.7 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..50] ~ ~ ~ 2 0.8 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..50] ~ ~ ~ 2 0.9 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..50] ~ ~ ~ 2 1.0 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..50] ~ ~ ~ 2 1.2 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..50] ~ ~ ~ 2 1.4 1

execute as @a[distance=..50] run function incendium:border_of_life/play

particle minecraft:explosion_emitter
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 200 force
