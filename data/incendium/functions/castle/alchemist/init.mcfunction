# from: ../mob/init
# @s: alchemist

data modify entity @s CustomName set value '{"translate":"incendium.mob.castle.alchemist.name","fallback":"Piglin Alchemist"}'
data modify entity @s DeathLootTable set value 'incendium:castle/entity/alchemist'

tag @s add in.activate_near
