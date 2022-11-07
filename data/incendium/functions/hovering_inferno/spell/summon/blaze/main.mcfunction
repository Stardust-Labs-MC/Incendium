# blaze pog

tellraw @a[tag=in.admin] "  Summon Entity -- Blaze"

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/summon/blaze/entity
