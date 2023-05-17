tag @s add laser
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 5 0.85
playsound minecraft:entity.ghast.shoot player @a[distance=..16] ~ ~ ~ 0.35 0.65
scoreboard players set #hit in.fire_laser 0
scoreboard players set #distance in.fire_laser 0
scoreboard players set #distance2 in.fire_laser 0
function incendium:item/firestorm/ray/iter
tag @s remove laser
