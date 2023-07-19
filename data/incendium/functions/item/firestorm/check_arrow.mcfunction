# from player/main
# @s: player

## Mainhand
# check if loaded crossbow has correct arrow type
execute store result score $failed in.dummy if entity @s[predicate=incendium:holding/loaded/mainhand,predicate=!incendium:holding/loaded_spectral_arrow/mainhand,predicate=incendium:holding/firestorm/mainhand]

execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:unload
execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.mainhand incendium:damage
execute if score $failed in.dummy matches 1.. run tellraw @s [{"translate":"incendium.item.firestorm.name","fallback":"Firestorm", "color": "#ff4400", "bold": true}, " ", {"translate": "can only load", "color":"#eb783f", "bold": false}, " ", {"translate":"incendium.system.spectral","fallback":"Spectral Arrows", "color":"#eb783f"}]
execute if score $failed in.dummy matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.5 1.25



## Offhand
# check if loaded crossbow has correct arrow type
execute store result score $failed in.dummy if entity @s[predicate=incendium:holding/loaded/offhand,predicate=!incendium:holding/loaded_spectral_arrow/offhand,predicate=incendium:holding/firestorm/offhand]

execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.offhand incendium:unload
execute if score $failed in.dummy matches 1.. run item modify entity @s weapon.offhand incendium:damage
execute if score $failed in.dummy matches 1.. run tellraw @s [{"translate":"incendium.item.firestorm.name","fallback":"Firestorm", "color": "#ff4400", "bold": true}, " ", {"translate": "can only load", "color":"#eb783f", "bold": false}, " ", {"translate":"incendium.system.spectral","fallback":"Spectral Arrows", "color":"#eb783f"}]
execute if score $failed in.dummy matches 1.. run playsound minecraft:entity.zombie.attack_iron_door player @s ~ ~ ~ 0.5 1.25
