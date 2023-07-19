# called from castle/pyro/actions/firework_spread
#> @s: AEC (piglin_fire)

tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] feet
tp @s ~ ~1.1 ~ ~-12 ~

tag @s add in.checked
tag @s add in.castle
