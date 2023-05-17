# from ../main

summon minecraft:tnt ~ ~ ~ {Tags:["in.castle_tnt"],Fuse:40}

execute as @e[type=tnt,tag=in.castle_tnt,tag=!in.checked,distance=..1,limit=1] run function incendium:castle/blacksmith/action/tnt_init

tag @s add in.was_blacksmith
function incendium:castle/blacksmith/action/become_knight

# audiovisuals
playsound minecraft:entity.tnt.primed player @a[distance=..30] ~ ~ ~ 2 0.9 0.5
playsound minecraft:entity.tnt.primed player @a[distance=..30] ~ ~ ~ 2 0.8 0.5
playsound minecraft:entity.tnt.primed player @a[distance=..30] ~ ~ ~ 2 0.7 0.5
