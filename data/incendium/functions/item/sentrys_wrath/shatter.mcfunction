# from (adv): incendium:technical/inventory/firestorm

tellraw @s [{"translate": "Your", "color":"#0077bb"}, " ",{"translate": "Sentry's Wrath", "color": "#33ccff", "bold": true}, " ", {"translate": "has shattered after being grindstoned"}]

clear @s crossbow{incendium:{item:'sentrys_wrath'}, RepairCost:0} 1

playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1

function incendium:item/sentrys_wrath/explode
