# @s: paratrooper
#> currently flying

## face the player
tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] eyes
# tp @s ~ ~ ~ ~ 80

## conditions for turning into a knight
execute if block ~ ~-1 ~ #incendium:airs if entity @s[nbt=!{Health:50.0f}] run function incendium:castle/paratrooper/action/become_knight
execute if block ~ ~-1 ~ #incendium:airs run data merge entity @s[nbt=!{Health:50.0f}] {FallDistance:20f}
execute unless block ~ ~-1 ~ #incendium:airs run function incendium:castle/paratrooper/action/become_knight
