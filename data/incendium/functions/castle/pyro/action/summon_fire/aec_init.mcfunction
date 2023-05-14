# called from castle/pyro/actions/summon_fire
#> @s: AEC (fire_block)

tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] feet
tp @s ~ ~-1 ~ ~12 ~-10

tag @s add in.checked
tag @s add in.fire_block_aec
tag @s add in.castle
tag @s add in.ticking_entity
