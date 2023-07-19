# from: entity/mobs/init
# @s: ghast sentry

tag @s add in.checked
data modify entity @s CustomName set value '{"translate":"incendium.mob.reactor.sentry.name","fallback":"Ghast Sentry"}'
team join in.noname @s

execute at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:basalt
execute at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:netherrack
execute at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:blackstone