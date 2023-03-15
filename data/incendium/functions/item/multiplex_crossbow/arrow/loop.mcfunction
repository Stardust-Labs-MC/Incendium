# from: ./spawn and <self>
# @s: arrow from multiplex
# recursively calls itself

summon arrow ~ ~ ~ {pickup:0b,PierceLevel:4b,damage:8.0d,crit:0b,Tags:["in.multiplex"]}

execute as @e[type=arrow,tag=in.multiplex,tag=!in.checked,limit=1,distance=..1] run function incendium:item/multiplex_crossbow/arrow/init

# recursive :D
scoreboard players remove $loop in.dummy 1
execute if score $loop in.dummy matches 1.. run function incendium:item/multiplex_crossbow/arrow/loop
