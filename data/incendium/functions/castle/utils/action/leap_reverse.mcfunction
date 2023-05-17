summon area_effect_cloud ~ ~ ~ {Tags:["select"]}
tp @e[type=area_effect_cloud,tag=select,distance=..0.1] ~ ~ ~ facing entity @p feet
playsound minecraft:item.trident.riptide_1 player @a[distance=..30] ~ ~ ~ 2 0.9 0.6
tag @s add d2
tag @s add leaping
tag @s add used_leap
#execute as @e[type=area_effect_cloud,tag=select] run function incendium:piglin_mage/pyro/actions/leap_rev_mob