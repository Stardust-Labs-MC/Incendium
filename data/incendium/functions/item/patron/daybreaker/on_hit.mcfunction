# from: player/on_hit/entity
# @s: player hitting

execute anchored eyes positioned ~ ~0.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ #incendium:airs run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0.1 15 force
execute anchored eyes positioned ~ ~0.5 ~ positioned ^ ^ ^2 if block ~ ~ ~ #incendium:airs run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0.1 15 force
execute anchored eyes positioned ~ ~0.5 ~ positioned ^ ^ ^3 if block ~ ~ ~ #incendium:airs run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0.1 15 force
execute anchored eyes positioned ~ ~0.5 ~ positioned ^ ^ ^4 if block ~ ~ ~ #incendium:airs run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0.1 15 force
execute anchored eyes positioned ~ ~0.5 ~ positioned ^ ^ ^5 if block ~ ~ ~ #incendium:airs run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 0.1 15 force
playsound minecraft:block.respawn_anchor.charge player @a[distance=..16] ~ ~ ~ 2 1.25
