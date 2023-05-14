# from: clocks/7s
# @s: sentry

tag @s remove in.sentry_active

execute if predicate incendium:random/35 run tag @s add in.sentry_active
