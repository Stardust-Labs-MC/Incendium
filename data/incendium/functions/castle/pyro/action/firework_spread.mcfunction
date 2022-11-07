#playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..30] ~ ~ ~ 2 0.85 1
#playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..30] ~ ~ ~ 2 1.0 1

tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] feet
summon area_effect_cloud ~ ~ ~ {Duration:14,Tags:["in.checked", "in.piglin_fire"]}
execute as @e[type=area_effect_cloud,tag=in.piglin_fire,tag=!in.checked,limit=1,distance=..1] run function incendium:castle/pyro/action/firework_spread/aec_init

item replace entity @s weapon.mainhand with air
tag @s remove in.firework
tag @s remove in.offhand_item
tag @s add in.chose_action
