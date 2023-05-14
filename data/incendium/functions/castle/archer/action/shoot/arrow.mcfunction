# > action: archer shoots an arrow

# summon an arrow to manipulate
summon arrow ~ ~1.5 ~ {pickup:0b,damage:4.0d,crit:1b,Tags:["in.castle_arrow"]}
execute positioned ~ ~1.5 ~ as @e[type=arrow,distance=..1,tag=in.castle_arrow,tag=!in.checked,limit=1] at @s run function incendium:castle/archer/action/shoot/arrow_init

# audiovisual
playsound minecraft:item.crossbow.shoot player @a[distance=..40] ~ ~ ~ 2 1.05 0.05

function incendium:castle/archer/action/disengage
tag @s add in.chose_action