# from: ../mob/main
# @s: paratrooper

tp @s ~ ~1 ~
data merge entity @s {Motion:[0.0,1.5,0.0],FallFlying:1b}
item replace entity @s weapon.mainhand with firework_rocket
tag @s add in.jumped
