# butterfly

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.butterfly.normal","fallback":"Butterfly Lasers: Normal"}

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/butterfly_lasers/normal/summon
