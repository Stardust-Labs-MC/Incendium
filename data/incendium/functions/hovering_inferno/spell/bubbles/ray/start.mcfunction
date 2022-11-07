tag @s add in.laser

scoreboard players set #hit in.fire_laser 0
scoreboard players set #distance in.fire_laser 0

execute positioned ^1.2 ^1 ^ run function incendium:hovering_inferno/spell/bubbles/ray/iter

tag @s remove in.laser
