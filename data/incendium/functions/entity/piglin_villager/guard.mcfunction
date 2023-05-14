# from: entity/piglin_villager/init
# @s: village guard

tag @s add in.checked

data modify entity @s CustomName set value '{"translate":"incendium.mob.village.guard.name","fallback":"Village Guard"}'
data modify entity @s DeathLootTable set value "incendium:cvill/mob/guard"
data modify entity @s CannotHunt set value 1b
data modify entity @s ArmorItems set value [{Count:1b, id:"minecraft:leather_boots", tag:{Damage:0}}, {Count:1b, id:"minecraft:leather_leggings", tag:{Damage:0}}, {Count:1b, id:"minecraft:golden_chestplate", tag:{Damage:0}}, {Count:1b, id:"minecraft:leather_helmet", tag:{Damage:0}}]
data modify entity @s HandItems set value [{Count:1b, id:"minecraft:wooden_axe", tag:{Damage:0}}, {}]
data modify entity @s ArmorDropChances set value [0.0,0.0,0.0,0.0]
data modify entity @s HandDropChances set value [0.0,0.0]

attribute @s generic.armor base set 0
attribute @s generic.armor_toughness base set 0
attribute @s generic.attack_damage base set 0
attribute @s generic.follow_range base set 0
attribute @s generic.movement_speed base set 0.3499999940395355