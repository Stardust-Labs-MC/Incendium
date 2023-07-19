# Bad Ending


execute as @e[type=blaze,tag=in.hovering_inferno] run data merge entity @s {DeathLootTable:"minecraft:empty"}
execute as @e[type=blaze,tag=in.hovering_inferno] at @s run forceload remove ~ ~

execute unless data storage incendium:main inferno{mode:'final'} run function incendium:hovering_inferno/messages/normal_fail
execute if data storage incendium:main inferno{mode:'final'} run function incendium:hovering_inferno/messages/final_fail

execute as @a run function incendium:border_of_life/stop

function incendium:hovering_inferno/spell/clear_all
schedule clear incendium:hovering_inferno/2s
schedule clear incendium:hovering_inferno/main
schedule clear incendium:hovering_inferno/loop
schedule clear incendium:hovering_inferno/timer
function incendium:hovering_inferno/kill
