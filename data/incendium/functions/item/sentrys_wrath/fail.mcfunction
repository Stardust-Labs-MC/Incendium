# from: ./on_shot
# @s: player

title @s actionbar ["", {"translate": "Sentry's Wrath", "color": "#33ccff", "bold": true}, " ", {"translate": "is still in cooldown", "color": "#0077bb"}]
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2

function incendium:item/sentrys_wrath/explode
