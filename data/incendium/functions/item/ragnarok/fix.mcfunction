# from: ./player/main
# @s: player holding ragnarok + tag=in.ragnarok_fix

data modify storage incendium:temp bow.CustomModelData set value 1450105

item modify entity @s[predicate=incendium:holding/ragnarok/mainhand] weapon.mainhand incendium:ragnarok/fix
item modify entity @s[predicate=incendium:holding/ragnarok/offhand] weapon.offhand incendium:ragnarok/fix

tag @s remove in.ragnarok_fix
