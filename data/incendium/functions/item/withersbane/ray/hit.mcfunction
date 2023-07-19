tag @s add in.hit

execute at @s facing entity @e[type=#incendium:withersbane_targets,tag=!in.hit,distance=..4,sort=nearest,limit=1] eyes run function incendium:item/withersbane/ray/start
