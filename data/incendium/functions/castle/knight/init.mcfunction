# from: ../mob/init
# @s: knight

data modify entity @s CustomName set value '"Piglin Knight"'

execute if entity @s[tag=in.randomize] run function incendium:castle/knight/action/equip/sword

tag @s add in.activate_mid
