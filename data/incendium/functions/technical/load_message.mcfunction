# from: clocks/wait_for_player

#tellraw @a [{"text":"I","color":"#ff8000"},{"text":"n","color":"#ff7800"},{"text":"c","color":"#ff7000"},{"text":"e","color":"#ff6800"},{"text":"n","color":"#ff6000"},{"text":"d","color":"#ff5800"},{"text":"i","color":"#ff5000"},{"text":"u","color":"#ff4800"},{"text":"m","color":"#ff4000"}, " - ", {"translate": "%1$s%4733088$s","with":["Starmute, et. al",{"translate":"incendium.system.credits"}]}]

scoreboard players set $load.message in.constants 1

schedule clear incendium:clocks/wait_for_player
