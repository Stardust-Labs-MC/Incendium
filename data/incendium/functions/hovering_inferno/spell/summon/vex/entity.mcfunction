# summon vex minion

playsound minecraft:entity.evoker.prepare_attack player @a[distance=..50] ~ ~ ~ 5 0.9 1
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.4 200 force
summon minecraft:vex ~ ~1 ~ {Tags:["in.inferno_entity", "in.minion"],LifeTicks:500,CustomName:'{"translate": "%1$s%4733088$s","with":["Infernal Minion",{"translate":"incendium.mob.inferno.minion.name"}]}',HandItems:[{id:"netherite_sword",Count:1}],HandDropChances:[-327.0f]}

execute if predicate incendium:random/90 run schedule function incendium:hovering_inferno/spell/summon/vex/main 50t
