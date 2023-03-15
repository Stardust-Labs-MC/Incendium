# from: player/on_hit/entity
# @s: entity being hit

execute as @e[type=#incendium:mobs_no_player,distance=..4] at @s facing entity @p[tag=in.self] feet run function incendium:item/blazing_hatchet/kick

playsound minecraft:entity.firework_rocket.blast player @a[distance=..16] ~ ~ ~ 2 0.6
playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..16] ~ ~ ~ 2 1.125
particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 100 force
