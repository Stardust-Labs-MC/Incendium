tag @s add laser
playsound minecraft:block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 5 2
scoreboard players set #hit in.fire_laser 0
scoreboard players set #distance in.fire_laser 0
scoreboard players set #distance2 in.fire_laser 0
#execute at @s positioned ^ ^1.25 ^ run 
function incendium:entity/sentry/ray/ray
tag @s remove laser
