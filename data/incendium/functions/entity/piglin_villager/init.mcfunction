# from: entity/mobs/init
# @s: piglin villager

execute if entity @s[tag=in.village_brewer] run function incendium:entity/piglin_villager/brewer
execute if entity @s[tag=in.village_guard] run function incendium:entity/piglin_villager/guard
execute if entity @s[tag=in.village_lumberjack1] run function incendium:entity/piglin_villager/lumberjack1
execute if entity @s[tag=in.village_lumberjack2] run function incendium:entity/piglin_villager/lumberjack2
execute if entity @s[tag=in.village_miner] run function incendium:entity/piglin_villager/miner
execute if entity @s[tag=in.piglin_civilian] run function incendium:entity/piglin_villager/civilian
execute if entity @s[tag=!in.village_brewer,tag=!in.village_guard,tag=!in.village_lumberjack,tag=!in.village_miner] run function incendium:entity/piglin_villager/civilian