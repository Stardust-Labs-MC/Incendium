# from: entity/sentry/main
# @s: Sentry "life" marker

execute store result entity @s Rotation[0] float 1 run data get entity @e[type=blaze,tag=in.sentry,limit=1,sort=nearest] Rotation[0]
execute store result entity @s Rotation[1] float 1 run scoreboard players get $sentry_lives in.dummy

# update rotation as well
execute if entity @s[scores={in.sentry_totems=1..}] rotated as @s positioned ^ ^0 ^1 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force
execute if entity @s[scores={in.sentry_totems=2..}] rotated as @s positioned ^ ^.707 ^.707 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force
execute if entity @s[scores={in.sentry_totems=3..}] rotated as @s positioned ^ ^1 ^0 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force
execute if entity @s[scores={in.sentry_totems=4..}] rotated as @s positioned ^ ^.707 ^-.707 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force
execute if entity @s[scores={in.sentry_totems=5..}] rotated as @s positioned ^ ^0 ^-1 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force
execute if entity @s[scores={in.sentry_totems=6..}] rotated as @s positioned ^ ^-.707 ^-.707 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force
execute if entity @s[scores={in.sentry_totems=7..}] rotated as @s positioned ^ ^-1 ^0 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force
execute if entity @s[scores={in.sentry_totems=8..}] rotated as @s positioned ^ ^-.707 ^.707 run particle minecraft:dust .5 1 1 0.9 ~ ~-.5 ~ 0 0 0 0 1 force