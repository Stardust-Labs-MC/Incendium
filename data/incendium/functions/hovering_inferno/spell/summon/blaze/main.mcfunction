# blaze pog

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.summon.blaze","fallback":"Summon: Blaze"}

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/summon/blaze/entity
