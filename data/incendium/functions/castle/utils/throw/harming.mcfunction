tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] eyes
summon potion ~ ~1 ~ {Tags:["in.alchemist_potion","in.air_toggle"],NoGravity:1b,Glowing:0b,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming",Enchantments:[{}]}}}

###

## read player dist
scoreboard players set $..10 in.dummy 0
scoreboard players set $6.. in.dummy 0
execute if entity @p[tag=in.valid_player,distance=..10] run scoreboard players set $..10 in.dummy 1
execute if entity @p[tag=in.valid_player,distance=6..] run scoreboard players set $6.. in.dummy 1

## aim and fire
# near: ..6
execute if score $..10 in.dummy matches 1.. if score $6.. in.dummy matches 0 rotated as @s as @e[type=potion,tag=in.alchemist_potion,tag=!in.checked,distance=..1] run function incendium:castle/utils/throw/near

# mid: 6..10
execute if score $..10 in.dummy matches 1.. if score $6.. in.dummy matches 1 rotated as @s as @e[type=potion,tag=in.alchemist_potion,tag=!in.checked,distance=..1] run function incendium:castle/utils/throw/mid

# far: 10..
execute if score $..10 in.dummy matches 0.. if score $6.. in.dummy matches 1 rotated as @s as @e[type=potion,tag=in.alchemist_potion,tag=!in.checked,distance=..1] run function incendium:castle/utils/throw/far

###

playsound minecraft:entity.witch.throw player @a[distance=..30] ~ ~ ~ 4 0.7 0.85
item replace entity @s weapon.offhand with air

tag @s add in.chose_action
tag @s remove in.harming
tag @s remove in.offhand_item
