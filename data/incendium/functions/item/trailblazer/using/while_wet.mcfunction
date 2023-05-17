# from: player/main
# @s: player using trailblazer while wet lol

title @s actionbar [{"translate": "%1$s%4733088$s","with":["Trailblazer",{"translate":"incendium.item.trailblazer.name"}], "color": "#F7823E", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["is still wet and cannot function",{"translate":"incendium.item.trailblazer.system.still_wet"}]}]

execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.1
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.5
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 1.1
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 1.4
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 2

advancement revoke @s only incendium:technical/using/trailblazer requirement
