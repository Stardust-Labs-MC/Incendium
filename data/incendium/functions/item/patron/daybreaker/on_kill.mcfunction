# from: player/on_kill/entity
# @s: entity being killed

execute if predicate incendium:random/50 anchored eyes positioned ~ ~0.5 ~ run summon item ^ ^ ^2.5 {Item:{id:"minecraft:gold_nugget",Count:1b},Motion:[0.0,0.1,0.0],PickupDelay:10}
execute if predicate incendium:random/0_4 anchored eyes positioned ~ ~0.5 ~ run summon item ^ ^ ^2.5 {Item:{id:"minecraft:gold_ingot",Count:1b},Motion:[0.0,0.2,0.0],PickupDelay:10}
