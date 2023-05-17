# from: entity/mob/main
# @s: sentry

# Normal Particles
execute if entity @s[tag=!in.sentry_active] run particle minecraft:end_rod ~ ~0.85 ~ 0.2 0.15 0.05 0.02 1 force @a[distance=..40]
execute if entity @s[tag=in.sentry_active] run particle minecraft:electric_spark ~ ~0.85 ~ 0.1 0.25 0.1 0.15 1 normal @a[distance=..40]

# 5% of the time, start a ray to the nearest valid player
execute if entity @s[tag=in.sentry_active,predicate=incendium:random/5] positioned ~ ~1.4 ~ facing entity @p[distance=..40,tag=in.valid_player] eyes run function incendium:entity/sentry/ray/start_ray

# "Lives" Particles
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=in.sentry_life,limit=1,sort=nearest] run function incendium:entity/sentry/life