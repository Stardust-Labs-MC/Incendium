# from: entity/mobs/init
# @s: torte

data modify entity @s CustomName set value {"text":"Torte","color":"#8dd2e8"}

loot replace entity @s weapon.mainhand loot incendium:artifact/tool/cake_batter
effect give @s strength 999999 3
data modify entity @s HandDropChances set value [0.50f, 0.50f]
tag @s add in.torte
