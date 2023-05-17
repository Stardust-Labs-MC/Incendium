# @s: hovering_inferno

playsound minecraft:entity.evoker.prepare_attack player @a[distance=..100] ~ ~ ~ 5 1.5 1
playsound minecraft:entity.elder_guardian.curse player @a[distance=..100] ~ ~ ~ 0.5 1.5 0.5
particle minecraft:flame ~ ~ ~ 0 0 0 0.4 100 force

execute at @a[distance=..100,tag=in.survival_player] run summon blaze ~ ~ ~3 {Tags:["in.checked","in.inferno_entity","in.summoned_blaze"],DeathLootTable:"incendium:entity/dune_blaze",CustomName:'{"translate": "%1$s%4733088$s","with":["Infernal Minion",{"translate":"incendium.mob.inferno.minion.name"}]}'}
execute at @a[distance=..100,tag=in.survival_player] run summon blaze ~ ~ ~-3 {Tags:["in.checked","in.inferno_entity","in.summoned_blaze"],DeathLootTable:"incendium:entity/dune_blaze",CustomName:'{"translate": "%1$s%4733088$s","with":["Infernal Minion",{"translate":"incendium.mob.inferno.minion.name"}]}'}

execute at @e[distance=..100,type=blaze,tag=in.inferno_entity,tag=in.summoned_blaze] run particle minecraft:flame ~ ~ ~ 0 0 0 0.2 100 force
