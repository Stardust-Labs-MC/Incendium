# from: mob/init
# @s: sanctum pillager

loot replace entity @s weapon.mainhand loot incendium:artifact/patron/holy_wrath

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Guardian",{"translate":"incendium.mob.sanctum.guardian.name"}], "color": "#DAA520"}'
data modify entity @s HandDropChances set value [40.0f,40.0f]
data modify entity @s ArmorItems set value [{id:"minecraft:netherite_helmet", Count:1b}, {id:"minecraft:iron_chestplate", Count:1b, tag:{Enchantments:[{id:"minecraft:blast_resistance",lvl:10s}]}}, {id:"minecraft:iron_leggings", Count:1b}, {id:"minecraft:golden_boots"}]
data modify entity @s PersistenceRequired set value 1b

tag @s add in.ticking_entity
effect give @s fire_resistance 1000000 2 true
