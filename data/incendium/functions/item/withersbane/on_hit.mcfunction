# from: player/event/on_hit
tag @s add in.hit

scoreboard players set $distance in.fire_laser 0
execute at @s facing entity @e[type=#incendium:withersbane_targets,tag=!in.hit,distance=..4,sort=nearest,limit=1] eyes run function incendium:item/withersbane/ray/start

execute as @e[type=#incendium:withersbane_targets,tag=in.hit] run function incendium:item/withersbane/effects

tag @e remove in.hit
