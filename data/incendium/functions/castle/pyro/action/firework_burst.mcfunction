#playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..30] ~ ~ ~ 2 0.85 1
#playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=..30] ~ ~ ~ 2 1.0 1
tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] feet

# firework_spread
execute positioned ~ ~1 ~ facing entity @p[tag=in.valid_player] feet rotated ~ ~-5 run function incendium:castle/pyro/action/firework_spread/fire

execute positioned ~ ~1 ~ facing entity @p[tag=in.valid_player] feet rotated ~ ~ run function incendium:castle/pyro/action/firework_burst/spawn
execute positioned ~ ~1 ~ facing entity @p[tag=in.valid_player] feet rotated ~ ~-10 run function incendium:castle/pyro/action/firework_burst/spawn
execute positioned ~ ~1 ~ facing entity @p[tag=in.valid_player] feet rotated ~-5 ~-5 run function incendium:castle/pyro/action/firework_burst/spawn
execute positioned ~ ~1 ~ facing entity @p[tag=in.valid_player] feet rotated ~5 ~-5 run function incendium:castle/pyro/action/firework_burst/spawn

item replace entity @s weapon.mainhand with air
tag @s add in.chose_action
tag @s remove in.offhand_item
tag @s remove in.firework
