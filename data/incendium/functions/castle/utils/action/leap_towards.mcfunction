execute positioned 0.0 0.0 0.0 rotated ~ ~ run tp @s ^ ^ ^1.4
data modify entity @e[type=piglin_brute,tag=d2,limit=1] Motion set from entity @s Pos
tag @e[type=#incendium:mobs_no_player,tag=d2] remove d2
kill @s