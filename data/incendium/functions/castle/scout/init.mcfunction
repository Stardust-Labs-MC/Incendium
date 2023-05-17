# from: castle/init (called once)
# @s: entity

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Piglin Scout",{"translate":"incendium.mob.castle.scout.name"}]}'
data modify entity @s DeathLootTable set value 'incendium:castle/entity/scout'

tag @s add in.activate_mid
