# Dash

tellraw @a[tag=in.admin] "  Dash Attack -- Normal"

scoreboard players set $dash in.inferno 0

# it's alright for double @e here
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s facing entity @p[tag=in.survival_player,distance=..50,predicate=incendium:dimension/nether] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound minecraft:block.bell.resonate player @a[distance=..50] ~ ~ ~ 3 2 1

execute if predicate incendium:random/80 run schedule function incendium:hovering_inferno/spell/dash/main 70t

schedule function incendium:hovering_inferno/spell/dash/loop 30t
