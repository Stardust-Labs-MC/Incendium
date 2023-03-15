# Normal Ending

execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound minecraft:entity.ender_dragon.death player @a[distance=..100] ~ ~ ~ 2 1.2 1
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound minecraft:entity.wither.death player @a[distance=..100] ~ ~ ~ 2 0.25 1
execute as @e[type=blaze,tag=in.hovering_inferno] run data merge entity @s {NoAI:1b}

tag @a remove in.was_inferno_fight
scoreboard players set $running in.inferno 0

function incendium:hovering_inferno/spell/clear_all
schedule clear incendium:hovering_inferno/2s
schedule clear incendium:hovering_inferno/main
schedule clear incendium:hovering_inferno/loop
schedule clear incendium:hovering_inferno/timer

schedule function incendium:hovering_inferno/xp/main 50t
schedule function incendium:hovering_inferno/kill 200t
