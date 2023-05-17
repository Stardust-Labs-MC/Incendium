# from: clocks/2s
# slow loop

scoreboard players add @e[type=#incendium:castle_spawned,tag=in.timed_death] in.timer 1

kill @e[type=#incendium:castle_spawned,tag=in.retreat,scores={in.timer=10..}]

execute if score $castle.AI in.state matches 1.. run tag @e[type=piglin_brute, tag=in.castle] remove in.active
