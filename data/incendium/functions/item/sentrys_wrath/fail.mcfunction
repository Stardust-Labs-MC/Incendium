# from: ./on_shot
# @s: player

title @s actionbar ["", {"translate": "%1$s%4733088$s","with":["Sentry's Wrath",{"translate":"incendium.item.sentrys_wrath.name"}], "color": "#33ccff", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["is still on cooldown",{"translate":"incendium.system.cooldown"}], "color": "#0077bb"}]
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2

function incendium:item/sentrys_wrath/explode
