scoreboard players add $spell_card in.inferno 1

execute store success score $fireball in.inferno if predicate incendium:random/50

# if random
execute if score $fireball in.inferno matches 1.. as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/spell/fireball/attack

# else: if random
execute unless score $fireball in.inferno matches 1.. if predicate incendium:random/50 as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/spell/fireball/attack_alt

schedule function incendium:hovering_inferno/spell/fireball/main 55t
