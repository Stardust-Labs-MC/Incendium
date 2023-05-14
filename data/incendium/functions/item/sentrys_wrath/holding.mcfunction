# from: player/main
# @s: player holding sentrys wrath

execute if entity @s[predicate=!incendium:holding/loaded_spectral_arrow,predicate=incendium:holding/loaded] run function incendium:item/sentrys_wrath/check_arrow 


execute if entity @s[scores={in.cd_wrath=0}] anchored eyes positioned ^ ^ ^1 run particle minecraft:dust 0 0.7 1 1 ~ ~ ~ 0.6 0.6 0.6 0 2 force
execute if entity @s[scores={in.cd_wrath=1..}] at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:dust 1 0.2 0 1 ~ ~ ~ 0.6 0.6 0.6 0 2 force
execute if entity @s[scores={in.cd_wrath=1..}] at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:dust 1 0.2 0 1 ~ ~ ~ 0.6 0.6 0.6 0 2 force

# ready!
playsound minecraft:block.respawn_anchor.charge player @s[scores={in.cd_wrath=1}] ~ ~ ~ 2 2
