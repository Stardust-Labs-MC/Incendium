scoreboard players set #hit in.fire_laser 0
scoreboard players set $distance in.fire_laser 0

function incendium:castle/utils/ray/iter

execute if score #hit in.fire_laser matches 1 run tag @s add in.found_player
execute if score #hit in.fire_laser matches 1 run tag @s add in.engaged_player
