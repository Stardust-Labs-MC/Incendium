# from: ./using

scoreboard players set @s in.wet 300
scoreboard players set @s in.trailblazer 0

tellraw @s [{"translate":"incendium.item.trailblazer.name","fallback":"Trailblazer", "color": "#F7823E", "bold": true}, " ", {"translate":"incendium.item.trailblazer.system.wet","fallback":"has become wet. You must dry it off before using it again"}]

function incendium:item/trailblazer/fix

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.1
