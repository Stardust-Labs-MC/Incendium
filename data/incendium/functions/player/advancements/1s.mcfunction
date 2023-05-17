# from: player/1s
# @s: player

advancement grant @s[scores={in.mine_debris=1..},predicate=incendium:other/hidden_debris] only incendium:volcanic_deltas/hidden_debris


execute if entity @s[predicate=incendium:structure/forbidden_castle] unless entity @e[type=piglin_brute,tag=in.castle,distance=..160] run advancement grant @s only incendium:ash_barrens/conquer_castle

# execute as @e[type=trident,tag=nodespawn] run data merge entity @s {life:0}

scoreboard players set @s in.mine_debris 0
