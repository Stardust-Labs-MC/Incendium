# from: entity/mob/main
# @s: sentry

execute if entity @s[tag=!in.sentry_active] run particle minecraft:soul_fire_flame ~ ~0.85 ~ 0.1 0.3 0.1 0.02 1 force @a[distance=..40]

execute if entity @s[tag=in.sentry_active] run particle minecraft:end_rod ~ ~1.25 ~ 0.3 0.3 0.3 0.05 2 force @a[distance=..40]

# 5% of the time, start a ray to the nearest valid player
execute if entity @s[tag=in.sentry_active,predicate=incendium:random/5] positioned ~ ~1.4 ~ facing entity @p[distance=..40,tag=in.valid_player] eyes run function incendium:entity/sentry/ray/start_ray
