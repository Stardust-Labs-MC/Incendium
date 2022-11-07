execute positioned 0.0 0.0 0.0 rotated ~ -8 run tp @s ^ ^ ^2.3
data modify entity @e[type=piglin_brute,tag=d2,limit=1] Motion set from entity @s Pos
tag @e[type=#incendium:mobs_no_player,tag=d2] remove d2
kill @s