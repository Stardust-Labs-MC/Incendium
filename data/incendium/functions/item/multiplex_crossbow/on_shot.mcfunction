# from (adv): technical/multiplex_crossbow

scoreboard players set $loop in.dummy 11
execute as @e[type=#arrows,tag=!in.checked,distance=..5] positioned as @s run function incendium:item/multiplex_crossbow/arrow/spawn

tp @s ~ ~ ~ ~ ~-5
playsound minecraft:entity.generic.explode player @s ~ ~ ~ 2 2
playsound minecraft:entity.generic.explode player @a[distance=..16] ~ ~ ~ 2 2

advancement revoke @s only incendium:technical/multiplex_crossbow requirement
