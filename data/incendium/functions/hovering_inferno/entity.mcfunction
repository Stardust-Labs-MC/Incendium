# from: ../main
# @s: inferno entity

effect clear @s[type=blaze] minecraft:levitation
execute if entity @s[type=blaze,tag=in.hovering_inferno] run function incendium:hovering_inferno/inferno/main

execute store result entity @s[tag=in.pivot] Rotation[0] float 1 run scoreboard players get $shield.pivot in.inferno

# oh jesus
execute if entity @s[type=arrow,tag=in.shulker] run function incendium:hovering_inferno/spell/shulker/shoot

execute if entity @s[type=fireball,tag=in.shulker] run function incendium:hovering_inferno/spell/shulker/shoot

execute if entity @s[type=small_fireball,tag=in.shulker] run function incendium:hovering_inferno/spell/shulker/shoot

# spells
execute if entity @s[type=area_effect_cloud,tag=in.butterfly] run function incendium:hovering_inferno/spell/butterfly_lasers/normal/entity
execute if entity @s[type=area_effect_cloud,tag=in.butterfly2] run function incendium:hovering_inferno/spell/butterfly_lasers/alt/entity
execute if entity @s[type=area_effect_cloud,tag=in.bubbles] run function incendium:hovering_inferno/spell/bubbles/entity

effect clear @s[type=blaze,predicate=incendium:effects/levitation] levitation

execute if entity @s[type=vex,tag=in.minion] run particle minecraft:soul ~ ~0.4 ~ 0.05 0.05 0.05 0.01 1 force

execute if entity @s[type=shulker_bullet,tag=in.last_bullet] run particle minecraft:falling_dust redstone_block ~ ~ ~ 0 0 0 0 2 force

kill @s[type=arrow,tag=in.shulker,nbt={inGround:1b}]
