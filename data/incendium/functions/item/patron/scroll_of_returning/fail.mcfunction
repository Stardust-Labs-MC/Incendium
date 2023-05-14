# from: ./use
# @s: player failed to teleport

tellraw @s {"translate":"incendium.item.returning_scroll.system.fail","fallback":"The Scroll of Returning only understands the Nether dimension!", "italic": true, "color": "#D393F5"}

execute store result score $rand in.dummy if predicate incendium:random/70
function incendium:item/patron/scroll_of_returning/crumble