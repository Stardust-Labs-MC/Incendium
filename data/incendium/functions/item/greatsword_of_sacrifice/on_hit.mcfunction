# from: player/event/on_hit_or_kill
# @s: player hitting

effect give @s instant_damage 1 1

particle soul ~ ~1 ~ 0 0 0 0.1 100 force
playsound minecraft:entity.husk.converted_to_zombie player @a[distance=..16] ~ ~ ~ 2 1.5 0
