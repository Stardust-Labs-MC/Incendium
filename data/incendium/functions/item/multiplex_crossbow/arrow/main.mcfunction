# from: entity/other/main
# @s: shotgun arrow

execute if entity @s[predicate=incendium:random/10] run particle lava ~ ~ ~ 0 0 0 0 1 force

scoreboard players add @s in.dummy 1

execute if entity @s[scores={in.dummy=5..}] run particle lava ~ ~ ~ .25 .15 .25 .05 3 force

# after 6 ticks, 20% chance to poof
kill @s[scores={in.dummy=6..},predicate=incendium:random/20]
