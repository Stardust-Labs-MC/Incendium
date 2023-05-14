# from: entity/mob/init
# @s: entity
# resets all eids maybe

execute if score $current.id in.eid matches 32768.. run function incendium:technical/entity_id/reset

function incendium:technical/entity_id/init
