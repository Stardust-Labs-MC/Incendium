# last

tellraw @a[tag=in.admin] "  Shulker Attack -- Last"

execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/spell/shulker/last/entity

schedule clear incendium:hovering_inferno/spell/dash/main
schedule function incendium:hovering_inferno/spell/shulker/last 30t
