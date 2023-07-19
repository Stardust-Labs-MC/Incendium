# from: entity/mobs/init
# @s: withered skeleton

tag @s add in.checked
data modify entity @s CustomName set value '{"translate":"incendium.mob.misc.headless.name","fallback":"Headless Warrior"}'
team join in.noname @s

attribute @s generic.movement_speed base set 0.16
tag @s add in.withered_skeleton

data modify entity @s DeathLootTable set value 'incendium:entity/withered_skeleton'
