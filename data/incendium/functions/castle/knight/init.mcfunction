# from: ../mob/init
# @s: knight

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Piglin Knight",{"translate":"incendium.mob.castle.knight.name"}]}'

execute if entity @s[tag=in.randomize] run function incendium:castle/knight/action/equip/sword

tag @s add in.activate_mid
