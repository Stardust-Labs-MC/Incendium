# no fire dash

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.dash.no_fire","fallback":"Dash: No Fire"}

scoreboard players set $dash in.inferno 0

execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s facing entity @p[tag=in.survival_player,distance=..50] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound minecraft:block.bell.resonate player @a[distance=..50] ~ ~ ~ 3 1.7 1

schedule function incendium:hovering_inferno/spell/dash/no_fire/loop 40t

execute if predicate incendium:random/80 run schedule function incendium:hovering_inferno/spell/dash/no_fire/main 90t
