# summon vex
# self-looped: 50t

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.summon.vex","fallback":"Summon: Vex"}

scoreboard players add $spell_card in.inferno 1
execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run function incendium:hovering_inferno/spell/summon/vex/entity
