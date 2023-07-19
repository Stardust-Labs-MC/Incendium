# from: entity/mob/init
# @s: magma cube

summon vex ~ ~ ~ {Tags:["in.spirit"]}
summon marker ~ ~ ~ {Tags:["in.spirit_death", "in.ticking_entity"]}

execute as @e[type=vex,tag=in.spirit,tag=!in.checked,distance=..1,limit=1,sort=nearest] run function incendium:entity/spirit/vex_init
tp @s ~ -10 ~
