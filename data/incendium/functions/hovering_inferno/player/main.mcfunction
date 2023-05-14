# from: ../
# @s: player (who is in the fight)

effect give @s[predicate=incendium:effects/levitation] instant_damage 3

effect clear @s minecraft:levitation

# used for messages
tag @s add in.was_inferno_fight
