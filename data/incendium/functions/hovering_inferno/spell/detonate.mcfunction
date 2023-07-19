# boom

function incendium:hovering_inferno/spell/clear_all

effect give @a[tag=in.inferno_fight] resistance 10 4 true
effect give @a[tag=in.inferno_fight] fire_resistance 10 4 true

execute at @e[type=blaze,tag=in.hovering_inferno] if entity @a[tag=in.survival_player,distance=..50,predicate=incendium:wearing/nothing] run scoreboard players set %inferno in.spell_card 320

execute at @e[type=blaze,tag=in.hovering_inferno] run advancement grant @a[tag=in.survival_player,distance=..50] only incendium:infernal_dunes/inferno/kill
execute at @e[type=blaze,tag=in.hovering_inferno] run advancement grant @a[tag=in.survival_player,distance=..50,predicate=incendium:wearing/nothing] only incendium:infernal_dunes/inferno/lunatic_mode

kill @e[type=shulker_bullet,tag=in.inferno_entity,tag=in.shulker]

schedule clear incendium:hovering_inferno/timer
schedule function incendium:hovering_inferno/end 20t
