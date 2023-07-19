# from: ./explode

summon small_fireball ^ ^ ^ {life:100,direction:[0.0,0.0,0.0],power:[0.0,-0.05,0.0],Tags:["in.cluster"],Item:{id:"minecraft:quartz",Count:1b}}
execute as @e[type=small_fireball,tag=in.cluster,tag=!in.checked,distance=..1,limit=1] run function incendium:item/patron/holy_wrath/fireball_init
