tag @s add laser
scoreboard players set @s in.cd_shield 120
scoreboard players set #hit in.fire_laser 0
scoreboard players set #distance3 in.fire_laser 0
playsound minecraft:block.beacon.power_select player @a[distance=..16] ~ ~ ~ 1 2 0.5
function incendium:item/prismatic_shield/ray/iter
tag @s remove laser
