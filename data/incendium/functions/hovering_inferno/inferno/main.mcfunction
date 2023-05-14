# from: ../entity
# @s: inferno

tp @e[type=minecraft:armor_stand,tag=in.shield] ~ ~ ~
effect give @s[predicate=incendium:effects/levitation] instant_health 1 0

# if first life has been popped
execute unless predicate incendium:holding/totem_of_undying unless data storage incendium:main inferno{mode:'final'} run function incendium:hovering_inferno/spell/last_spell/prepare

execute unless data storage incendium:main inferno{mode:'final'} store result score $health in.inferno run data get entity @s Health
execute unless data storage incendium:main inferno{mode:'final'} store result bossbar incendium:inferno value run scoreboard players get $health in.inferno

execute if data storage incendium:main inferno{mode:'normal'} if score $health in.inferno matches ..199 run data modify storage incendium:main inferno.mode set value 'low'

execute if data storage incendium:main inferno{mode:'low'} if score $health in.inferno matches 200.. run data modify storage incendium:main inferno.mode set value 'normal'

execute if data storage incendium:main inferno{mode:'last'} run tp @s ~ ~ ~ facing entity @p[tag=in.survival_player,distance=..50] eyes

# armor
execute anchored eyes as @e[type=armor_stand,tag=in.inferno_armor,distance=..100] run function incendium:hovering_inferno/armor/main

particle lava ~ ~0.1 ~ 0.1 0.2 0.1 0.2 1 force
