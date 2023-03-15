# blaze pog

tellraw @a[tag=in.admin] {"translate": "%1$s%4733088$s","with":["Summon: Blaze",{"translate":"incendium.inferno.spell.summon.blaze"}]}

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/summon/blaze/entity
