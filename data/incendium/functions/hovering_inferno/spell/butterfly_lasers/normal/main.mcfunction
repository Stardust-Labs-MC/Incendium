# butterfly

tellraw @a[tag=in.admin] {"translate": "%1$s%4733088$s","with":["Butterfly Lasers: Normal",{"translate":"incendium.inferno.spell.butterfly.normal"}]}

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/butterfly_lasers/normal/summon
