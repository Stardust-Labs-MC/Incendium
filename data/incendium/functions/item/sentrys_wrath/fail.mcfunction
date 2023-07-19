# from: ./on_shot
# @s: player

title @s actionbar ["", {"translate":"incendium.item.sentrys_wrath.name","fallback":"Sentry's Wrath", "color": "#33ccff", "bold": true}, " ", {"translate":"incendium.system.cooldown","fallback":"is still on cooldown", "color": "#0077bb"}]
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2

function incendium:item/sentrys_wrath/explode
