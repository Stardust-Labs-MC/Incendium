# from: entity/other/main

execute if predicate incendium:random/60 run particle minecraft:soul ~ ~1 ~ .125 .125 .125 .02 1 normal

execute if block ~ ~-0.7 ~ #incendium:nether_blocks_no_air run function incendium:item/restless_nature/place
execute if block ~ ~-0.05 ~ #incendium:nether_blocks_no_air run kill @s