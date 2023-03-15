# from: player/main
# @s: player (at an item entity)

execute if predicate incendium:random/50 if block ~ ~1 ~ #incendium:smashables run setblock ~ ~1 ~ air destroy
execute if predicate incendium:random/50 if block ~ ~-1 ~ #incendium:smashables run setblock ~ ~-1 ~ air destroy
execute if predicate incendium:random/50 if block ~-1 ~ ~ #incendium:smashables run setblock ~-1 ~ ~ air destroy
execute if predicate incendium:random/50 if block ~1 ~ ~ #incendium:smashables run setblock ~1 ~ ~ air destroy
execute if predicate incendium:random/50 if block ~ ~ ~-1 #incendium:smashables run setblock ~ ~ ~-1 air destroy
execute if predicate incendium:random/50 if block ~ ~ ~1 #incendium:smashables run setblock ~ ~ ~1 air destroy
