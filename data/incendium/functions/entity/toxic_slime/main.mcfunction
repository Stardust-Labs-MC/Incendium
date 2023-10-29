# from: entity/mobs/main
# @s: toxic slime

execute if entity @a[distance=..1.5,predicate=incendium:biome/toxic_heap,predicate=!incendium:wearing/hazmat] run effect give @a[distance=..1.5,tag=in.valid_player] minecraft:poison 5 4
particle minecraft:falling_dust slime_block ~ ~0.45 ~ 0.1 0.2 0.1 0 0 normal

execute if score @s in.lifetime matches ..0 run tp @s ~ -20 ~
execute if score @s in.lifetime matches ..0 run kill @s