tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] eyes
summon potion ~ ~1 ~ {Tags:["in.alchemist_potion","in.air_toggle"],NoGravity:1b,Glowing:0b,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness",Enchantments:[{}]}}}

execute as @e[type=potion,tag=in.alchemist_potion,tag=!in.checked,distance=..1] run function incendium:castle/utils/throw/near

playsound minecraft:entity.witch.throw player @a[distance=..30] ~ ~ ~ 4 0.7 0.85
item replace entity @s weapon.offhand with air

tag @s add in.chose_action
tag @s remove in.slowness
tag @s remove in.offhand_item
