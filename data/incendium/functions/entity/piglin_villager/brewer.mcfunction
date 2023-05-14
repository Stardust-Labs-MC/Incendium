# from: entity/piglin_villager/init
# @s: village brewer

tag @s add in.checked

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Village Brewer",{"translate":"incendium.mob.village.brewer.name"}]}'
data modify entity @s DeathLootTable set value "incendium:cvill/mob/brewer"
data modify entity @s CannotHunt set value 1b
data modify entity @s ArmorItems set value [{}, {}, {}, {}]
data modify entity @s HandItems set value [{Count:1b, id:"minecraft:potion", tag:{Potion:"minecraft:water"}}, {}]
data modify entity @s ArmorDropChances set value [0.0,0.0,0.0,0.0]
data modify entity @s HandDropChances set value [0.0,0.0]

attribute @s generic.armor base set 0
attribute @s generic.armor_toughness base set 0
attribute @s generic.attack_damage base set 0
attribute @s generic.follow_range base set 0
attribute @s generic.movement_speed base set 0.3499999940395355