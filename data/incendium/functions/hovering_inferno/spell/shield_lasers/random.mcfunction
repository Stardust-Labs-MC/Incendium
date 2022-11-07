# choose **1** randomly

execute store success score $random in.dummy if predicate incendium:random/50

execute if score $random in.dummy matches 1.. run function incendium:hovering_inferno/spell/shield_lasers/all/main
execute unless score $random in.dummy matches 1.. run function incendium:hovering_inferno/spell/shield_lasers/half/main
