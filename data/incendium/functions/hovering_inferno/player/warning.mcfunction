# from ../2s
# @s: player, at hovering_inferno

tellraw @s [{"translate":"incendium.inferno.system.warning1","fallback":"You cannot leave the", "color": "#ff6600"}, " ", {"translate":"incendium.admin.menu.inferno","fallback":"Hovering Inferno", "bold": true}, " ", {"translate":"incendium.inferno.system.warning2","fallback":"fight in its final phase"}]

title @s title ""
title @s subtitle {"translate":"incendium.inferno.system.warning","fallback":"Return to the fight", "color": "#ff6600"}

effect give @s instant_damage 1 0 true
