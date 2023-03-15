# from: ./using

scoreboard players set @s in.wet 300
scoreboard players set @s in.trailblazer 0

tellraw @s [{"translate": "%1$s%4733088$s","with":["Trailblazer",{"translate":"incendium.item.trailblazer.name"}], "color": "#F7823E", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["has become wet. You must dry it off before using it again",{"translate":"incendium.item.trailblazer.system.wet"}]}]

function incendium:item/trailblazer/fix

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.1
