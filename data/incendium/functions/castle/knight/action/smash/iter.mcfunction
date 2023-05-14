execute if score #hit in.fire_laser matches 0 unless block ~ ~ ~ #incendium:airs run function incendium:castle/knight/action/smash/hit

scoreboard players add $distance in.fire_laser 1

execute if score #hit in.fire_laser matches 0 if score $distance in.fire_laser matches ..50 positioned ^ ^ ^0.1 rotated ~ ~ run function incendium:castle/knight/action/smash/iter
