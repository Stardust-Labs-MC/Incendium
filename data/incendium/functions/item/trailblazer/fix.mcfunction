# from: ./player/main
# @s: player holding trailblazer + tag=in.trailblazer_fix

data modify storage incendium:temp bow.CustomModelData set value 1450104

item modify entity @s[predicate=incendium:holding/trailblazer/mainhand] weapon.mainhand incendium:trailblazer/fix
item modify entity @s[predicate=incendium:holding/trailblazer/offhand] weapon.offhand incendium:trailblazer/fix

effect clear @s slowness

tag @s remove in.trailblazer_fix
