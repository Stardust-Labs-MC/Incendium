# from (adv): incendium:technical/inventory/firestorm

tellraw @s [{"translate":"incendium.item.firestorm.name","fallback":"Firestorm", "color": "#ff4400", "bold": true}, " ", {"translate":"incendium.system.shatter","fallback":"has shattered after being used on a Grindstone"}]

clear @s crossbow{incendium:{item:'firestorm'}, RepairCost:0} 1

playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1

function incendium:item/firestorm/ray/start
