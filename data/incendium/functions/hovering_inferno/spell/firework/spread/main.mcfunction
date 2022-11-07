# firework spread

scoreboard players add $spell_card in.inferno 1

## one or the other
execute store success score $rand in.dummy if predicate incendium:random/50

execute if score $rand in.dummy matches 0 as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/spell/firework/spread/normal

execute if score $rand in.dummy matches 1 as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/spell/firework/spread/alt

## loop
schedule function incendium:hovering_inferno/spell/firework/spread/main 50t
