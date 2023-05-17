# from ./main
# @s: arrow
# makes a firework boom

execute anchored eyes run summon firework_rocket ~ ~0.25 ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:0,Colors:[I;11743532,15435844],FadeColors:[I;14602026,15435844]},{Type:0,Flicker:1,Trail:0,Colors:[I;11743532,15435844],FadeColors:[I;14602026,15435844]}]}}}}

particle flame ~ ~ ~ .25 1.25 .25 .1 50 force
particle small_flame ~ ~ ~ .25 1.25 .25 .6 50 force

summon small_fireball ~ ~0.5 ~ {Motion:[0.0d,-0.9d,0.0d],power:[0.0d, -0.1d, 0.0d]}
kill @s
