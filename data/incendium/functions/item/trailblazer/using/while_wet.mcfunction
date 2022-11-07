# from: player/main
# @s: player using trailblazer while wet lol

title @s actionbar [{"translate":"Your", "color":"#C46731"}, " ", {"translate": "Trailblazer", "color": "#F7823E", "bold": true}, " ", {"translate": "is still wet and cannot function"}]

execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.1
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.5
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 1.1
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 1.4
execute if predicate incendium:random/0_5 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 2

advancement revoke @s only incendium:technical/using/trailblazer requirement
