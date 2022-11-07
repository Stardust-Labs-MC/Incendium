# clock: 1s

schedule function incendium:clocks/1s 1s replace

function incendium:castle/1s

execute as @a at @s run function incendium:player/1s

execute as @e[type=blaze,tag=in.dune_blaze] at @s run function incendium:entity/dune_blaze/1s

effect give @e[type=piglin,predicate=incendium:biome/toxic_heap] poison 10 1

scoreboard players remove @e[type=vex,tag=in.spirit] in.lifetime 1
scoreboard players remove @e[type=slime,tag=in.toxic_slime] in.lifetime 1