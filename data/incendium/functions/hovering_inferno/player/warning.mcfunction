# from ../2s
# @s: player, at hovering_inferno

tellraw @s [{"translate": "You cannot leave the", "color": "#ff6600"}, " ", {"translate": "Hovering Inferno", "bold": true}, " ", {"translate": "fight in it's final phase."}]

title @s title ""
title @s subtitle {"translate": "Return to the fight", "color": "#ff6600"}

effect give @s instant_damage 1 0 true
