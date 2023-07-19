# self-looping

schedule function incendium:hovering_inferno/2s 2s replace

execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] as @e[type=shulker_bullet,tag=in.shulker,predicate=incendium:random/10] run tp @s ~ ~ ~ 

tag @a remove in.inferno_fight
execute at @e[type=blaze,tag=in.hovering_inferno,limit=1] run tag @e[type=player,distance=..100] add in.inferno_fight

execute as @e[type=area_effect_cloud,tag=in.inferno_entity,tag=in.match_y] at @s run data modify entity @s Pos[1] set from entity @p[distance=..40,tag=in.survival_player,tag=in.inferno_fight] Pos[1]
execute as @e[type=area_effect_cloud,tag=in.inferno_entity,tag=in.match_y] at @s run tp @s ~ ~1 ~

execute if data storage incendium:main inferno{mode:'last'} at @e[type=blaze,tag=in.hovering_inferno,limit=1] as @a[tag=in.inferno_fight,distance=30..50] run function incendium:hovering_inferno/player/warning

execute unless entity @a[tag=in.inferno_fight] run function incendium:hovering_inferno/end/bad

bossbar set incendium:inferno players @a[tag=in.inferno_fight]
