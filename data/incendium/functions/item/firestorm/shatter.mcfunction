# from (adv): incendium:technical/inventory/firestorm

tellraw @s [{"translate": "Your", "color":"#eb783f"}, " ",{"translate": "Firestorm", "color": "#ff4400", "bold": true}, " ", {"translate": "has shattered after being grindstoned"}]

clear @s crossbow{incendium:{item:'firestorm'}, RepairCost:0} 1

playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1

function incendium:item/firestorm/ray/start
