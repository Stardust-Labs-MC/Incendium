# direct attack spell

tellraw @a[tag=in.admin] {"translate": "%1$s%4733088$s","with":["Firework: Direct",{"translate":"incendium.inferno.spell.firework.direct"}]}

execute if predicate incendium:random/30 run scoreboard players add $spell_card in.inferno 1
scoreboard players set $attack in.inferno 0

execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run playsound minecraft:block.beacon.power_select player @a[distance=..50] ~ ~ ~ 2 1.5 1
function incendium:hovering_inferno/inferno/face_player
execute as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run summon area_effect_cloud ^ ^ ^5 {Duration:60,Tags:["in.inferno_entity","in.direct_atk"]}

schedule function incendium:hovering_inferno/spell/firework/direct/loop 20t
schedule function incendium:hovering_inferno/spell/firework/direct/main 60t