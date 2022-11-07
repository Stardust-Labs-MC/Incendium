# bubbles!

tellraw @a[tag=in.admin] "  Bubbles Attack -- Normal"

schedule clear incendium:hovering_inferno/spell/shulker/last
function incendium:hovering_inferno/spell/kill/bullets

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run playsound minecraft:entity.ender_dragon.shoot player @a[distance=..30] ~ ~ ~ 1 0.75 1

execute as @e[type=armor_stand,tag=in.inferno_armor,tag=in.shield] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["in.bubbles", "in.inferno_entity"],Duration:55}

execute as @e[type=area_effect_cloud,tag=in.inferno_entity,tag=in.bubbles] at @s run data modify entity @s Pos[1] set from entity @p[distance=..40,tag=in.survival_player,tag=in.inferno_fight] Pos[1]

schedule function incendium:hovering_inferno/spell/bubbles/main 15t replace
