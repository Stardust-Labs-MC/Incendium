# from player/main
# @s: player

# check if loaded crossbow has correct arrow type
execute store result score $failed in.dummy if entity @s[predicate=incendium:holding/loaded/mainhand,predicate=!incendium:holding/loaded_spectral_arrow/mainhand,predicate=incendium:holding/holy_wrath]

execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:unload
execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:damage
execute if score $failed in.dummy matches 1.. run tellraw @s [{"translate": "Holy Wrath", "color": "#ffee77", "bold": true}, " ", {"translate": "can only load", "color":"#ccbb88", "bold": false}, " ", {"text": "Spectral Arrows", "color":"#ccbb88"}]
execute if score $failed in.dummy matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.5 1.25