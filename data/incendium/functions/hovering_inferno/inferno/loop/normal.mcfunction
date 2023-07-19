# from: ../loop
# @s: inferno

function incendium:hovering_inferno/spell/fireball/clear
function incendium:hovering_inferno/spell/firework/clear
function incendium:hovering_inferno/spell/summon/clear
function incendium:hovering_inferno/spell/dash/clear
function incendium:hovering_inferno/spell/shulker/clear
function incendium:hovering_inferno/spell/shield_lasers/clear

execute if predicate incendium:random/20 run function incendium:hovering_inferno/spell/dash/no_fire/main


execute if score $health in.inferno matches ..450 if predicate incendium:random/40 run function incendium:hovering_inferno/spell/dash/main

execute if predicate incendium:random/20 run function incendium:hovering_inferno/spell/dash/no_fire/main
execute if predicate incendium:random/20 run function incendium:hovering_inferno/spell/firework/direct/main
execute if predicate incendium:random/20 run function incendium:hovering_inferno/spell/firework/direct_alt/main
execute if predicate incendium:random/20 run function incendium:hovering_inferno/spell/summon/blaze/main

execute if score $spell_card in.inferno matches 0 if predicate incendium:random/30 run function incendium:hovering_inferno/spell/firework/spread/main
execute if score $spell_card in.inferno matches 0 if predicate incendium:random/20 run function incendium:hovering_inferno/spell/shulker/curved
execute if score $spell_card in.inferno matches ..2 if predicate incendium:random/20 run function incendium:hovering_inferno/spell/shield_lasers/random
execute if score $spell_card in.inferno matches 0 if predicate incendium:random/40 run function incendium:hovering_inferno/spell/summon/vex/main
execute if score $spell_card in.inferno matches ..1 if predicate incendium:random/20 run function incendium:hovering_inferno/spell/summon/blaze/main
execute if score $spell_card in.inferno matches 0 if predicate incendium:random/98 run function incendium:hovering_inferno/spell/fireball/main

# audiovisual
playsound minecraft:entity.ender_dragon.growl player @a[distance=..60] ~ ~ ~ 2 2 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0.5 1 force

schedule function incendium:hovering_inferno/loop 400t replace
