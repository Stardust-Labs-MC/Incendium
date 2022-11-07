# from: player/on_block
# @s: player being hit

tag @s add in.self
execute positioned ~ ~1.25 ~ run function incendium:item/prismatic_shield/ray/start
scoreboard players set @s in.cd_shield 15
tag @s remove in.self
