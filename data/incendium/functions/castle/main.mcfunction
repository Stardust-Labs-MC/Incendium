# from: clocks/main

scoreboard players add $castle.tick in.state 1
execute if score $castle.tick in.state matches 4.. run scoreboard players set $castle.tick in.state 0
