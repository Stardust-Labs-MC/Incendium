# from: entity/mobs/init
# @s: withered scientist

tag @s add in.checked

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Piglin Civilian",{"translate":"incendium.mob.village.civilian.name"}]}'
data modify entity @s CannotHunt set value 1b
data modify entity @s ArmorItems set value '[{Count:1b, id:"minecraft:leather_boots", tag:{Damage:0}}, {}, {}, {}]'
data modify entity @s HandItems set value '[{},{}]'
data modify entity @s ArmorDropChances set value '[0,0,0,0]'

attribute @s generic.armor base set 0
attribute @s generic.armor_toughness base set 0
attribute @s generic.attack_damage base set 0
attribute @s generic.follow_range base set 0
attribute @s generic.movement_speed base set 0.3499999940395355