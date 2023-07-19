summon wither_skeleton ~ ~ ~ {Tags:["in.director"]}
execute as @e[type=wither_skeleton,distance=..2,sort=nearest,limit=1] run function incendium:entity/misc_init/director