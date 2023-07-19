# from: ./main
# @s: AEC w/ tag=in.rotated

tp @s ~ ~ ~ ~15.314159 0

tp @e[type=area_effect_cloud,tag=in.voltaic_trident,tag=in.left,limit=1] ^ ^ ^2
tp @e[type=area_effect_cloud,tag=in.voltaic_trident,tag=in.right,limit=1] ^ ^ ^-2

execute as @e[type=area_effect_cloud,tag=in.voltaic_trident,tag=in.rotated] at @s run particle dust 0.4 0 1 1 ~ ~ ~ 0.25 0.25 0.25 0.022 5 force

execute if score $toggle in.constants matches 1.. run function incendium:item/voltaic_trident/dna/start_ray
