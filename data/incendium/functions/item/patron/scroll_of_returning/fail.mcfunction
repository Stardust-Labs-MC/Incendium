# from: ./use
# @s: player failed to teleport

tellraw @s {"translate": "%1$s%4733088$s","with":["The Scroll of Returning only understands the Nether dimension!",{"translate":"incendium.item.returning_scroll.system.fail"}], "italic": true, "color": "#D393F5"}

execute store result score $rand in.dummy if predicate incendium:random/70
function incendium:item/patron/scroll_of_returning/crumble