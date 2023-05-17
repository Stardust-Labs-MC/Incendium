# @s: paratrooper
#> on jump

data merge entity @s {FallFlying:1b}
tag @s add in.flying

# shoot rockets
execute if entity @s[tag=!in.flying] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/paratrooper/action/shoot/rocket
execute if entity @s[predicate=incendium:random/20,tag=in.flying,y_rotation=0..90] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/paratrooper/action/shoot/rocket_low
execute if entity @s[predicate=incendium:random/20,tag=in.flying,y_rotation=-90..0] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/paratrooper/action/shoot/rocket
