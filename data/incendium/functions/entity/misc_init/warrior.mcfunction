# from: entity/mobs/init
# @s: withered skeleton

tag @s add in.checked
data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Headless Warrior",{"translate":"incendium.mob.misc.headless.name"}]}'
team join in.noname @s

attribute @s generic.movement_speed base set 0.16
tag @s add in.withered_skeleton

data modify entity @s DeathLootTable set value 'incendium:entity/withered_skeleton'
