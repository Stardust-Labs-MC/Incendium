# random lightning

summon area_effect_cloud ~ ~1 ~ {Tags:["in.random_lightning"],Duration:3}
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..7] ~ ~ ~ 0.4 1.6

execute as @e[type=area_effect_cloud,tag=in.random_lightning,tag=!in.checked,distance=..2.2,limit=1] at @s run function incendium:item/voltaic_trident/explode/rotate/rand
execute if predicate incendium:random/20 as @e[type=area_effect_cloud,tag=in.random_lightning,tag=!in.checked,distance=..2.2,limit=1] at @s facing entity @e[type=#incendium:mobs,distance=1..6,limit=3] eyes run function incendium:item/voltaic_trident/explode/lightning/start_ray
