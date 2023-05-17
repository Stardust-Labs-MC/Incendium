execute anchored eyes facing entity @p eyes rotated ~15 -5 run summon ender_pearl ^ ^ ^1 {Tags:["d1","air"],NoGravity:1b,Glowing:0b,Motion:[0.0,0.0,0.0]}
data modify entity @e[type=ender_pearl,tag=d1,limit=1] Owner set from entity @s UUID
summon area_effect_cloud ~ ~ ~ {Tags:["select"]}
execute as @e[type=area_effect_cloud,tag=select] run function incendium:piglin_mage/aim/pearl
playsound minecraft:entity.witch.throw player @a[distance=..30] ~ ~ ~ 4 1.5 0.85
item replace entity @s weapon.offhand with air
tag @s add chose_action
tag @s remove pearl
tag @s remove offhand_item