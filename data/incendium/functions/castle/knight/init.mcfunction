# from: ../mob/init
# @s: knight

data modify entity @s CustomName set value '{"translate":"incendium.mob.castle.knight.name","fallback":"Piglin Knight"}'

execute if entity @s[tag=in.randomize] run function incendium:castle/knight/action/equip/sword

tag @s add in.activate_mid
