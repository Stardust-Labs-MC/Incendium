# from player/main
# @s: player

## Mainhand
# check if loaded crossbow has correct arrow type
execute store result score $failed in.dummy if entity @s[predicate=incendium:holding/loaded/mainhand,predicate=!incendium:holding/loaded_spectral_arrow/mainhand,predicate=incendium:holding/sentrys_wrath/mainhand]

execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:unload
execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:damage
execute if score $failed in.dummy matches 1.. run tellraw @s [{"translate": "%1$s%4733088$s","with":["Sentry's Wrath",{"translate":"incendium.item.sentrys_wrath.name"}], "color": "#33ccff", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["can only load",{"translate":"incendium.system.only_load"}], "color": "#0077bb", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["Spectral Arrows",{"translate":"incendium.system.spectral"}], "color": "#0077bb"}]

## Offhand
# check if loaded crossbow has correct arrow type
execute store result score $failed in.dummy if entity @s[predicate=incendium:holding/loaded/offhand,predicate=!incendium:holding/loaded_spectral_arrow/offhand,predicate=incendium:holding/sentrys_wrath/offhand]

execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.offhand incendium:unload
execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.offhand incendium:damage
execute if score $failed in.dummy matches 1.. run tellraw @s [{"translate": "%1$s%4733088$s","with":["Sentry's Wrath",{"translate":"incendium.item.sentrys_wrath.name"}], "color": "#33ccff", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["can only load",{"translate":"incendium.system.only_load"}], "color": "#0077bb", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["Spectral Arrows",{"translate":"incendium.system.spectral"}], "color": "#0077bb"}]
