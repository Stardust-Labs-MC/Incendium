# from (adv): incendium:technical/inventory/firestorm

tellraw @s [{"translate": "%1$s%4733088$s","with":["Firestorm",{"translate":"incendium.item.firestorm.name"}], "color": "#ff4400", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["has shattered after being used on a Grindstone",{"translate":"incendium.system.shatter"}]}]

clear @s crossbow{incendium:{item:'firestorm'}, RepairCost:0} 1

playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1

function incendium:item/firestorm/ray/start
