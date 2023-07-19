# from: ../main
# @s: baby ghast

tag @s add in.ghast_laser
scoreboard players set #hit in.fire_laser 0
scoreboard players set #distance in.fire_laser 0
#execute at @s positioned ^ ^2.5 ^ rotated ~45 ~ run 
function incendium:entity/baby_ghast/ray/iter
tag @s remove in.ghast_laser 