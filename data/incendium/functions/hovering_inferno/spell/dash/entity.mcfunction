# Sub part of dashing

# face a random player first tick
execute if score $dash in.inferno matches 0 facing entity @r[tag=in.survival_player,distance=..50,predicate=incendium:dimension/nether] eyes run tp @s ~ ~ ~ ~ ~

# fire!
execute rotated as @s if block ^ ^ ^1 #incendium:airs run tp @s ^ ^ ^1
execute rotated as @s run summon evoker_fangs ^ ^ ^-1
execute rotated as @s run fill ^ ^ ^-1 ^ ^ ^-1 fire replace air

scoreboard players add $dash in.inferno 1

# loop 20 times
execute if score $dash in.inferno matches ..20 run schedule function incendium:hovering_inferno/spell/dash/loop 1t replace
