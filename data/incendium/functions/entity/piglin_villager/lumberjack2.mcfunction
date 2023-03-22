# from: entity/piglin_villager/init
# @s: village lumberjack

tag @s add in.checked

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Village Lumberjack",{"translate":"incendium.mob.village.lumberjack.name"}]}'
data modify entity @s DeathLootTable set value "incendium:cvill/mob/lumberjack"
data modify entity @s CannotHunt set value 1b
data modify entity @s ArmorItems set value [{}, {Count:1b, id:"minecraft:iron_leggings", tag:{Damage:0}}, {}, {}]
data modify entity @s HandItems set value [{Count:1b, id:"minecraft:iron_axe", tag:{Damage:0}}, {}]
data modify entity @s ArmorDropChances set value [0.0,0.0,0.0,0.0]
data modify entity @s HandDropChances set value [0.2,0.0]

attribute @s generic.armor base set 0
attribute @s generic.armor_toughness base set 0
attribute @s generic.attack_damage base set 0
attribute @s generic.follow_range base set 0
attribute @s generic.movement_speed base set 0.3499999940395355