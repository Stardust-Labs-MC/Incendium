# from: ./fail OR ./activate
# @s: player who used scroll

# $rand is set beforehand in activate or fail functions, since the probabilities are reversed
execute if score $rand in.dummy matches 1.. run tellraw @s {"text": "The ancient technique withstood itself, this time...", "italic": true, "color": "#D393F5"}

execute if score $rand in.dummy matches 1.. run loot replace entity @s[tag=in.mainhand_scroll] weapon.mainhand loot incendium:artifact/patron/scroll_of_returning
execute if score $rand in.dummy matches 1.. run loot replace entity @s[tag=in.offhand_scroll] weapon.offhand loot incendium:artifact/patron/scroll_of_returning

execute unless score $rand in.dummy matches 1.. run tellraw @s {"text": "The ancient technique crumbled upon usage", "italic": true, "color": "#D393F5"}