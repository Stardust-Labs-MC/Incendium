# from: entity/mobs/init
# @s: toxic slime

summon slime ~ ~ ~ {Tags:["in.toxic_slime"]}
execute as @e[type=slime,tag=in.toxic_slime,tag=!in.checked,distance=..1,limit=1,sort=nearest] run function incendium:entity/toxic_slime/slime_init
tp @s ~ -10 ~
