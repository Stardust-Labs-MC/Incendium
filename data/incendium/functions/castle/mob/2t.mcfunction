# from clocks/2t
# @s: castle mob

execute if entity @s[type=area_effect_cloud,tag=in.piglin_fire] run function incendium:castle/pyro/action/firework_spread/fire
execute if entity @s[type=area_effect_cloud,tag=in.piglin_fire] run tp @s ~ ~ ~ ~4 ~

execute if entity @s[type=area_effect_cloud,tag=in.fire_block_aec] run function incendium:castle/pyro/action/summon_fire/block
execute if entity @s[type=area_effect_cloud,tag=in.fire_block_left] run tp @s ~ ~ ~ ~-4 ~-5
execute if entity @s[type=area_effect_cloud,tag=in.fire_block_right] run tp @s ~ ~ ~ ~4 ~-5

# execute if entity @s[type=marker,tag=rotated] run function incendium:artifact/trident/dna/start_ray

# execute if entity @s[type=marker,tag=thunder] run tp @s ~ ~ ~ ~60 ~
# execute if entity @s[type=marker,tag=thunder] run tp @s ^ ^ ^4
# execute if entity @s[predicate=incendium:random/20,type=marker,tag=thunder] run summon lightning_bolt
