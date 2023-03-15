tp @s ~ ~ ~ facing entity @p[tag=in.valid_player,distance=0.01..] feet

execute store result score $random in.dummy if predicate incendium:random/50

execute if score $random in.dummy matches 0 anchored eyes run summon area_effect_cloud ~ ~ ~ {Duration:14,Tags:["in.fire_block_aec", "in.fire_block_left"]}
execute as @e[type=area_effect_cloud,tag=in.fire_block_aec,tag=!in.checked,distance=..1,limit=1] run function incendium:castle/pyro/action/summon_fire/aec_init

execute if score $random in.dummy matches 1 anchored eyes run summon area_effect_cloud ~ ~ ~ {Duration:14,Tags:["in.fire_block_aec", "in.fire_block_right"]}
execute as @e[type=area_effect_cloud,tag=in.fire_block_aec,tag=!in.checked,distance=..1,limit=1] run function incendium:castle/pyro/action/summon_fire/aec_init

item replace entity @s weapon.mainhand with air
tag @s remove in.flint_and_steel
tag @s remove in.offhand_item
tag @s add in.chose_action
