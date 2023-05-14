# from: clocks/1s
# @s: sentry

execute store result score @e[type=marker,sort=nearest,limit=1,tag=in.sentry_life,distance=..2] in.sentry_totems run data get entity @s HandItems[0].Count