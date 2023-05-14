# from (adv): incendium:technical/inventory/firestorm

tellraw @s [{"translate":"incendium.item.sentrys_wrath.name","fallback":"Sentry's Wrath", "color": "#33ccff", "bold": true}, " ", {"translate":"incendium.system.shatter","fallback":"has shattered after being used on a Grindstone"}]

clear @s crossbow{incendium:{item:'sentrys_wrath'}, RepairCost:0} 1

playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1

function incendium:item/sentrys_wrath/explode
