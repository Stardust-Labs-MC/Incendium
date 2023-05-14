# from ../2s
# @s: player, at hovering_inferno

tellraw @s [{"translate": "%1$s%4733088$s","with":["You cannot leave the",{"translate":"incendium.inferno.system.warning1"}], "color": "#ff6600"}, " ", {"translate": "%1$s%4733088$s","with":["Hovering Inferno",{"translate":"incendium.admin.menu.inferno"}], "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["fight in its final phase",{"translate":"incendium.inferno.system.warning2"}]}]

title @s title ""
title @s subtitle {"translate": "%1$s%4733088$s","with":["Return to the fight",{"translate":"incendium.inferno.system.warning"}], "color": "#ff6600"}

effect give @s instant_damage 1 0 true
