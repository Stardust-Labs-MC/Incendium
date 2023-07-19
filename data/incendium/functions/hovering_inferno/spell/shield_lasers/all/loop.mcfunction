# shield lasers - all

scoreboard players add $laser_time in.inferno 1

execute if predicate incendium:random/80 as @e[type=blaze,tag=in.hovering_inferno] at @s run playsound block.respawn_anchor.deplete master @a[distance=..50] ~ ~ ~ 1 2 1

execute as @e[type=armor_stand,tag=in.shield] at @s anchored eyes positioned ^ ^2.5 ^ anchored feet run function incendium:hovering_inferno/spell/shield_lasers/ray/start

execute if score $laser_time in.inferno matches ..15 run schedule function incendium:hovering_inferno/spell/shield_lasers/all/loop 2t
