# from: load
# waits for player

schedule function incendium:clocks/wait_for_player 1s replace

execute if entity @r run function incendium:technical/load_message
