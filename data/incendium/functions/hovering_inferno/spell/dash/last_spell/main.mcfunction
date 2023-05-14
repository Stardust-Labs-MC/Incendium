# last_spell dash?

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.last.dash","fallback":"Last: Dash"}

scoreboard players set $dash in.inferno 0
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s facing entity @p[tag=in.survival_player,distance=..50] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound minecraft:block.bell.resonate player @a[distance=..50] ~ ~ ~ 3 1.7 1

schedule function incendium:hovering_inferno/spell/dash/no_fire/main 32t replace
schedule function incendium:hovering_inferno/spell/dash/last_spell/main 70t replace
