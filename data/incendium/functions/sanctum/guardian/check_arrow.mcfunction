# from ./main
# @s: arrow

data modify storage incendium:temp entity.UUID set from entity @e[type=pillager,distance=..2,tag=in.self,limit=1] UUID

execute store result score $failure in.dummy run data modify storage incendium:temp entity.UUID set from entity @s Owner

execute unless score $failure in.dummy matches 1.. run function incendium:item/patron/holy_wrath/arrow_init
