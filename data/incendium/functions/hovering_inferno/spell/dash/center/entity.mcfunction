# from ./loop

execute facing entity @e[type=marker,tag=in.altar,limit=1,distance=..100] eyes run tp @s ~ ~ ~ ~ -10

execute rotated as @s run tp @s ^ ^ ^1
execute rotated as @s run tp @s ^ ^ ^1
execute rotated as @s run summon evoker_fangs ^ ^ ^-1

execute if score $dash in.inferno matches ..20 positioned ~ ~-4 ~ unless entity @e[type=marker,tag=in.altar,limit=1,distance=..7] run schedule function incendium:hovering_inferno/spell/dash/center/loop 1t replace

execute if score $dash in.inferno matches 21.. at @e[type=marker,tag=in.altar,limit=1] run tp @s ~ ~5 ~

scoreboard players add $dash in.inferno 1
