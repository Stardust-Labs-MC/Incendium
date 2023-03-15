# shield lasers - half

tellraw @a[tag=in.admin] "  Shield Lasers -- Half"

scoreboard players set $laser_time in.inferno 0
execute if predicate incendium:random/50 run scoreboard players add $spell_card in.inferno 1

execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound block.respawn_anchor.set_spawn master @a[distance=..50] ~ ~ ~ 1 1.4 1
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 185

schedule function incendium:hovering_inferno/spell/shield_lasers/half/loop 30t
schedule function incendium:hovering_inferno/spell/shield_lasers/half/main 100t
