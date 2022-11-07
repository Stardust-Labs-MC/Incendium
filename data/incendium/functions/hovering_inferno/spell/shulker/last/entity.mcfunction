# @s: hovering_inferno

data modify storage incendium:temp bullet.Glowing set value 1b

execute if predicate incendium:random/90 positioned ~1 ~2 ~ run function incendium:hovering_inferno/spell/shulker/shoot
execute if predicate incendium:random/90 positioned ~-1 ~2 ~ run function incendium:hovering_inferno/spell/shulker/shoot
execute if predicate incendium:random/90 positioned ~ ~2 ~-1 run function incendium:hovering_inferno/spell/shulker/shoot
execute if predicate incendium:random/90 positioned ~ ~2 ~1 run function incendium:hovering_inferno/spell/shulker/shoot
execute at @a[predicate=incendium:random/50,distance=..80,tag=in.survival_player] positioned ~ ~2 ~ run function incendium:hovering_inferno/spell/shulker/shoot

data remove storage incendium:temp bullet.Glowing

playsound minecraft:entity.wither.shoot player @a[distance=..50] ~ ~ ~ 0.3 0.6 0.3
particle minecraft:enchant ~ ~5 ~ 0 0 0 0.4 30 force
