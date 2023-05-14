# from (adv): technical/feed_ghastling
# @s: player

execute positioned ^ ^ ^2 as @e[type=vex,tag=in.baby_ghast,distance=..5,limit=1,sort=nearest] at @s run function incendium:entity/baby_ghast/eat

advancement revoke @s only incendium:technical/feed_ghastling requirement
