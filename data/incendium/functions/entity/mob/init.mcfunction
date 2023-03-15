# from: clocks/main (called once)
# @s: entity

function incendium:technical/entity_id/check
tag @s add in.checked

#> ## Mob Specifics ##

#> Blazes

## Sentry
execute if entity @s[tag=in.sentry] run function incendium:entity/sentry/init

## Nether Reactor mobs
execute if entity @s[type=ghast,tag=in.ghast_sentry] run function incendium:entity/misc_init/ghast_sentry
execute if entity @s[type=wither_skeleton,tag=in.director] run function incendium:entity/misc_init/director

## Dunes
execute if entity @s[type=blaze,predicate=incendium:biome/infernal_dunes,tag=!in.sentry] unless predicate incendium:structure/fortress run function incendium:entity/dune_blaze/init

#> Wither Skeletons
execute if entity @s[type=wither_skeleton,predicate=incendium:biome/withered_forest,predicate=!incendium:structure/fortress] run function incendium:entity/misc_init/warrior
execute if entity @s[type=wither_skeleton,tag=in.scientist] run function incendium:entity/misc_init/scientist

#> Spirits
execute if entity @s[type=magma_cube,predicate=incendium:biome/has/spirit] if score %count in.spirit_count matches ..30 run function incendium:entity/spirit/init
execute if entity @s[type=magma_cube,predicate=incendium:biome/has/spirit] if score %count in.spirit_count matches 31.. run function incendium:entity/spirit/fail

#> Toxic Slimes
execute if entity @s[type=magma_cube,predicate=incendium:biome/toxic_heap] if score %count in.toxic_count matches ..30 run function incendium:entity/toxic_slime/init
execute if entity @s[type=magma_cube,predicate=incendium:biome/toxic_heap] if score %count in.toxic_count matches 31.. run function incendium:entity/toxic_slime/fail

# #> Voltaic Lightning 
# execute if entity @s[type=silverfish,predicate=incendium:biome/voltaic_heap] run function incendium:entity/voltaic_lightning/spawn

#> Kitchen Skeletons
execute if entity @s[type=skeleton,tag=in.torte] run function incendium:entity/misc_init/torte
execute if entity @s[type=skeleton,tag=in.bro] run function incendium:entity/misc_init/skeli_bro

#> Baby Ghast
execute if entity @s[type=allay,tag=in.unborn_ghast] run function incendium:entity/baby_ghast/init

#> Castle
tag @s[tag=castle] add in.castle
execute if entity @s[tag=in.castle] run function incendium:castle/mob/init
execute if entity @s[type=hoglin,name="Dinnerbone"] run team join in.noname @s

#> Sanctum
execute if entity @s[tag=in.sanctum] run function incendium:sanctum/mob/init
execute if entity @s[type=illusioner,name="Sanctum Illusionist",tag=in.sanctum] run function incendium:entity/misc_init/illusionist

#> Village
execute if entity @s[type=piglin,predicate=incendium:structure/piglin_village] run function incendium:entity/misc_init/piglin_civilian