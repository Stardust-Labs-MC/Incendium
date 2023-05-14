execute at @s run summon minecraft:vex ~ ~ ~ {Tags:["in.baby_ghast"],Passengers:[{id:"minecraft:allay",Tags:["in.baby_head"]}]}
execute as @e[type=vex,tag=in.baby_ghast,sort=nearest,limit=1,distance=..1] run function incendium:entity/baby_ghast/vex_init
execute as @e[type=allay,tag=in.baby_head,sort=nearest,limit=1,distance=..1] run function incendium:entity/baby_ghast/allay_init