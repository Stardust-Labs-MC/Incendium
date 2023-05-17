# from: entity/mobs/init
# @s: spirit

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Restless Spirit",{"translate":"incendium.mob.misc.spirit.name"}],"color":"#329e83"}'
team join in.noname @s

attribute @s generic.movement_speed base set 1.1
attribute @s generic.max_health base set 1

item replace entity @s weapon.mainhand with air

effect give @s fire_resistance 999999 0 true
effect give @s invisibility 999999 0 true

tag @s add in.checked
tag @s add in.ticking_entity
scoreboard players set @s in.lifetime 150

data modify entity @s DeathLootTable set value 'incendium:entity/spirit'