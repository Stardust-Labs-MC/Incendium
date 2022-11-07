# from: player/event/on_hit/entity
# @s: entity hit by cake batter

execute store success score $hunger in.dummy if predicate incendium:random/5
execute store success score $feed in.dummy if predicate incendium:random/25

execute if score $hunger in.dummy matches 1.. run tellraw @s {"text": "You've eaten too much cake and received a stomach ache", "color": "#ff69b4"}
execute if score $hunger in.dummy matches 1.. run effect give @s minecraft:hunger 5 5 

execute unless score $hunger in.dummy matches 1.. if score $feed in.dummy matches 1.. run tellraw @s {"text": "Yum", "color": "#ffddf4"}
execute unless score $hunger in.dummy matches 1.. if score $feed in.dummy matches 1.. run effect give @s minecraft:saturation 3 1
