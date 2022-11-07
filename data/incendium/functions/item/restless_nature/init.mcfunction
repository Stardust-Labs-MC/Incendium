# from: player/main

stopsound @a[distance=..16] * entity.snowball.throw
playsound minecraft:entity.wither.shoot player @a[distance=..16] ~ ~ ~ .8 1.5

tag @s add in.restless_nature
tag @s add in.checked
tag @s add in.ticking_entity