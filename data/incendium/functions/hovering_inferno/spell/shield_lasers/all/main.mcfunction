# shield lasers - all

tellraw @a[tag=in.admin] {"translate": "%1$s%4733088$s","with":["Shield Lasers: All",{"translate":"incendium.inferno.spell.lasers.all"}]}

scoreboard players set $laser_time in.inferno 0
execute if predicate incendium:random/50 run scoreboard players add $spell_card in.inferno 1

execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound block.respawn_anchor.set_spawn master @a[distance=..50] ~ ~ ~ 1 1.25 1
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 200

schedule function incendium:hovering_inferno/spell/shield_lasers/all/loop 30t
schedule function incendium:hovering_inferno/spell/shield_lasers/all/main 130t

schedule clear incendium:hovering_inferno/spell/shield_lasers/half/main
schedule clear incendium:hovering_inferno/spell/shield_lasers/half/loop
