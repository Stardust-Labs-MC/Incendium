# from: ./tick
# @s: AEC

data modify storage incendium:temp player.UUID set from entity @s data.player.UUID

execute if predicate incendium:weather/thunder run function incendium:item/voltaic_trident/lightning
execute if predicate incendium:biome/toxic_heap run function incendium:item/voltaic_trident/lightning

function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0
function incendium:item/voltaic_trident/explode/rotate/0

execute facing entity @e[type=#incendium:mobs,distance=..10,limit=12,sort=nearest] eyes if predicate incendium:random/70 run function incendium:item/voltaic_trident/explode/lightning/start_ray

playsound minecraft:entity.splash_potion.break player @a[distance=..40] ~ ~ ~ 2 0.5 0.7
playsound minecraft:entity.splash_potion.break player @a[distance=..40] ~ ~ ~ 2 0.4 0.7
playsound minecraft:entity.splash_potion.break player @a[distance=..40] ~ ~ ~ 2 0.6 0.7
playsound minecraft:entity.splash_potion.break player @a[distance=..40] ~ ~ ~ 2 0.7 0.7
playsound minecraft:entity.splash_potion.break player @a[distance=..40] ~ ~ ~ 2 0.8 0.7
playsound minecraft:item.trident.thunder player @a[distance=..40] ~ ~ ~ 0.2 1.5 0.2
playsound minecraft:item.bucket.fill_lava player @a[distance=..40] ~ ~ ~ 2 0.85 0.2
