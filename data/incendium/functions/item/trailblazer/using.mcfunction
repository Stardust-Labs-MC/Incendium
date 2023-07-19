# from: player/main
# @s: player using trailblazer

tag @s add in.self

scoreboard players add @s in.trailblazer 1

# update?
scoreboard players operation $update in.dummy = @s in.trailblazer
scoreboard players operation $update in.dummy %= #20 in.constants

scoreboard players operation $random in.dummy = @s in.trailblazer

# wet boi
execute if entity @s[predicate=incendium:dimension/overworld,predicate=incendium:weather/raining,predicate=incendium:random/other/x,predicate=incendium:random/10] run function incendium:item/trailblazer/wet
execute anchored eyes if block ^ ^ ^ water run function incendium:item/trailblazer/wet

# particles
execute if entity @s[scores={in.trailblazer=80..}] anchored eyes run particle minecraft:small_flame ^ ^ ^0.2 1 1 1 0.2 20 force

# effects
execute if entity @s[scores={in.trailblazer=80..},predicate=incendium:random/20] anchored eyes positioned ^ ^ ^0.2 as @e[type=#incendium:mobs_no_player,predicate=incendium:random/25,distance=..5] run data modify entity @s Fire set value 80s

execute if score $update in.dummy matches 0 if entity @s[scores={in.trailblazer=..80}] run function incendium:item/trailblazer/update

effect give @s[scores={in.trailblazer=81..}] slowness 1 7 true

advancement revoke @s only incendium:technical/using/trailblazer requirement
tag @s remove in.self
