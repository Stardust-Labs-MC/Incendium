# from: entity/mobs/init
# @s: toxic slime

summon slime ~ ~ ~ {Tags:["in.toxic_slime"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:255},{id:"minecraft:unbreaking",lvl:255}]}},{},{},{}]}
execute as @e[type=slime,tag=in.toxic_slime,tag=!in.checked,distance=..1,limit=1,sort=nearest] run function incendium:entity/toxic_slime/slime_init
tp @s ~ -10 ~
