# from: player/on_hit/entity
# @s: entity being hit

effect give @s slowness 6 1

particle minecraft:snowflake ~ ~1.6 ~ 0.1 0.05 0.1 0.01 10 force
particle minecraft:snowflake ~ ~1.6 ~ 0.1 0.05 0.1 0 20

playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 0.37 1.45
playsound minecraft:block.powder_snow.break master @a ~ ~ ~ 1 0.5

scoreboard players set @s in.frozen 120
