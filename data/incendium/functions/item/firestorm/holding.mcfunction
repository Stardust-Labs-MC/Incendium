# # from: player/main
# @s: player holding firestorm

execute if entity @s[predicate=incendium:effects/on_fire,predicate=incendium:random/5] rotated ~ 180 run function incendium:item/firestorm/ray/start
