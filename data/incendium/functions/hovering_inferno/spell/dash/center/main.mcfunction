# Dash Center Spell

tellraw @a[tag=in.admin] {"translate": "%1$s%4733088$s","with":["Dash: Center",{"translate":"incendium.inferno.spell.dash.center"}]}

scoreboard players set $dash in.inferno 0
execute as @e[type=blaze,tag=in.hovering_inferno] at @s facing entity @e[type=marker,tag=in.altar,distance=..50,limit=1] eyes run tp @s ~ ~ ~ ~ -18
#execute as @e[type=blaze,tag=inferno] at @s run playsound minecraft:block.bell.resonate player @a[distance=..50] ~ ~ ~ 3 2 1
function incendium:hovering_inferno/spell/dash/center/loop
