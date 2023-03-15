# from (adv): technical/on_sword_get

# warning noise
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.9 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.9 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.9 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2

effect give @a[distance=..16] blindness 4 0 true

# summon baddies
execute as @e[type=piglin_brute,tag=in.paratrooper,distance=..110] at @s if predicate incendium:random/80 run function incendium:castle/paratrooper/action/leap_silent
summon piglin_brute ~-25 ~-6 ~ {FallFlying:1b,Tags:["in.reinforcement","in.castle","in.paratrooper","in.flying","in.jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
summon piglin_brute ~25 ~-6 ~ {FallFlying:1b,Tags:["in.reinforcement","in.castle","in.paratrooper","in.flying","in.jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
summon piglin_brute ~ ~-6 ~25 {FallFlying:1b,Tags:["in.reinforcement","in.castle","in.paratrooper","in.flying","in.jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
summon piglin_brute ~ ~-6 ~-25 {FallFlying:1b,Tags:["in.reinforcement","in.castle","in.paratrooper","in.flying","in.jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
execute as @e[type=piglin_brute,tag=in.reinforcement,distance=..110] at @s facing entity @p eyes run function incendium:castle/paratrooper/action/shoot/rocket

kill @e[type=armor_stand,limit=1,sort=nearest]