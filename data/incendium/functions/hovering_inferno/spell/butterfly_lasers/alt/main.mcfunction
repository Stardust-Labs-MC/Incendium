# butterfly

tellraw @a[tag=in.admin] {"translate": "%1$s%4733088$s","with":["Butterfly Lasers: Alt",{"translate":"incendium.inferno.spell.butterfly.alt"}]}

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/butterfly_lasers/alt/summon
