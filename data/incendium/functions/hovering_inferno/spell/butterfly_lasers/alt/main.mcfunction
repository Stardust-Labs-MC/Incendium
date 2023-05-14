# butterfly

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.butterfly.alt","fallback":"Butterfly Lasers: Alt"}

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/butterfly_lasers/alt/summon
