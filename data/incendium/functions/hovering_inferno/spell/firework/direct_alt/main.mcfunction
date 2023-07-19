# direct attack spell

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.firework.direct_alt","fallback":"Firework: Direct Alt"}

execute if predicate incendium:random/30 run scoreboard players add $spell_card in.inferno 1
scoreboard players set $attack_alt in.inferno 0

execute as @e[type=blaze,tag=in.hovering_inferno] at @s run playsound minecraft:block.beacon.activate player @a[distance=..50] ~ ~ ~ 2 2 1
function incendium:hovering_inferno/inferno/face_player
execute as @e[type=blaze,tag=in.hovering_inferno] at @s run summon area_effect_cloud ^ ^ ^ {Duration:100,Tags:["in.inferno_entity","in.direct_atk_alt"]}

schedule function incendium:hovering_inferno/spell/firework/direct_alt/loop 10t
schedule function incendium:hovering_inferno/spell/firework/direct_alt/main 90t
