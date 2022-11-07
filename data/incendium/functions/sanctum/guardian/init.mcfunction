# from: mob/init
# @s: sanctum pillager

loot replace entity @s weapon.mainhand loot incendium:artifact/patron/holy_wrath

data modify entity @s CustomName set value '{"text": "Sanctum Guardian", "color": "#DAA520"}'
data modify entity @s HandDropChances set value [40.0f,40.0f]
data modify entity @s ArmorItems set value [{id:"minecraft:netherite_helmet", Count:1b}, {id:"minecraft:iron_chestplate", Count:1b, tag:{Enchantments:[{id:"minecraft:blast_resistance",lvl:10s}]}}, {id:"minecraft:iron_leggings", Count:1b}, {id:"minecraft:golden_boots"}]

tag @s add in.ticking_entity
effect give @s fire_resistance 1000000 2 true

schedule function incendium:sanctum/guardian/mining_fatigue 1t replace
