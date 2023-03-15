# from: entity/mobs/init
# @s: torte

data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Torte",{"translate":"incendium.mob.quartz.torte.name"}],"color":"#8dd2e8"}'

loot replace entity @s weapon.mainhand loot incendium:artifact/tool/cake_batter
effect give @s strength 999999 2
data modify entity @s HandDropChances set value [0.50f, 0.50f]

tag @s add in.chekced