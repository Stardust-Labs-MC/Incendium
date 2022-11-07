# from: entity/mobs/init
# @s: sentry

execute unless data entity @s CustomName run data modify entity @s CustomName set value {"text":"Pipeline Sentry","color":"yellow"}
team join in.noname @s

execute store result score $hand.items in.dummy if data entity @s HandItems[{id:"minecraft:totem_of_undying"}]

execute if predicate incendium:random/50 run scoreboard players set $count in.dummy 12
execute if predicate incendium:random/50 run scoreboard players set $count in.dummy 6

execute if score $hand.items in.dummy matches ..0 run data modify entity @s HandItems[0] set value {id:"minecraft:totem_of_undying",Count:4b}

execute if score $hand.items in.dummy matches ..0 if predicate incendium:random/50 store result entity @s HandItems[0].Count byte 1 run scoreboard players get $count in.dummy

data modify entity @s DeathLootTable set value 'incendium:entity/sentry'
tag @s add in.ticking_entity

data modify entity @s HandDropChances set value [-327.0f, -327.0f]
