# from (adv): technical/holy_wrath
# @s: player shooting holy wrath

tag @s add in.self

function incendium:misc/store_uuid

execute as @e[type=#arrows,tag=!in.checked,distance=..3,limit=1] at @s run function incendium:item/patron/holy_wrath/arrow_init

# audiovisuals
playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 2 0.75 0.25
playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 2 1 0.25
playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 2 1.25 0.25
playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 2 1.5 0.25
playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 2 1.75 0.25
playsound minecraft:block.enchantment_table.use player @a[distance=..30] ~ ~ ~ 2 2 0.25

tag @s remove in.self
advancement revoke @s only incendium:technical/holy_wrath requirement
