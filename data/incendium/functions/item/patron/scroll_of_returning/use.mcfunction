# from: player/main
# @s: player

item replace entity @s[tag=in.mainhand_scroll] weapon.mainhand with air
item replace entity @s[tag=in.offhand_scroll] weapon.offhand with air

execute if predicate incendium:dimension/nether run function incendium:item/patron/scroll_of_returning/activate
execute unless predicate incendium:dimension/nether run function incendium:item/patron/scroll_of_returning/fail
