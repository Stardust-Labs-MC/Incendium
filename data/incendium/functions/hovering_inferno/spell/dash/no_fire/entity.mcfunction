# from ./loop

execute if score $dash in.inferno matches 0 facing entity @r[tag=in.survival_player,distance=..50] eyes run tp @s ~ ~ ~ ~ ~

execute if block ^ ^ ^1 #incendium:airs run tp @s ^ ^ ^1

scoreboard players add $dash in.inferno 1
execute if entity @a[tag=in.survival_player,distance=..3.6] run scoreboard players add $dash in.inferno 10
execute if score $dash in.inferno matches ..20 run schedule function incendium:hovering_inferno/spell/dash/no_fire/loop 1t
