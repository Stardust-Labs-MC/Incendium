# from: clocks/main (called once)
# @s: entity

function incendium:technical/entity_id/check
tag @s add in.checked

#> ## Mob Specifics ##

#> Blazes

## Sentry
tag @s[tag=sentry] add in.sentry
tag @s[name="Sentry"] add in.sentry
tag @s[name="Pipeline Sentry"] add in.sentry
execute if entity @s[tag=in.sentry] run function incendium:entity/sentry/init

## Dunes
execute if entity @s[type=blaze,predicate=incendium:biome/infernal_dunes,tag=!in.sentry] unless predicate incendium:structure/fortress run function incendium:entity/dune_blaze/init

#> Wither Skeletons
execute if entity @s[type=wither_skeleton, predicate=incendium:biome/withered_forest,tag=!in.fortress] run function incendium:entity/withered_skeleton/init

#> Spirits
execute if entity @s[type=magma_cube,predicate=incendium:biome/has/spirit] if score %count in.spirit_count matches ..30 run function incendium:entity/spirit/init
execute if entity @s[type=magma_cube,predicate=incendium:biome/has/spirit] if score %count in.spirit_count matches 31.. run function incendium:entity/spirit/fail

#> Toxic Slimes
execute if entity @s[type=magma_cube,predicate=incendium:biome/toxic_heap] if score %count in.toxic_count matches ..30 run function incendium:entity/toxic_slime/init
execute if entity @s[type=magma_cube,predicate=incendium:biome/toxic_heap] if score %count in.toxic_count matches 31.. run function incendium:entity/toxic_slime/fail

# #> Voltaic Lightning 
# execute if entity @s[type=silverfish,predicate=incendium:biome/voltaic_heap] run function incendium:entity/voltaic_lightning/spawn

#> Torte
execute if entity @s[type=skeleton,name="Torte",predicate=incendium:biome/quartz_flats] run function incendium:entity/torte/init

#> Baby Ghast
execute if entity @s[type=allay,tag=in.unborn_ghast] run function incendium:entity/baby_ghast/init

#> Castle
tag @s[tag=castle] add in.castle
execute if entity @s[tag=in.castle] run function incendium:castle/mob/init

#> Sanctum
execute if entity @s[tag=in.sanctum] run function incendium:sanctum/mob/init
execute if entity @s[type=illusioner,name="Sanctum Illusionist",tag=in.sanctum] run function incendium:entity/illusionist/init
