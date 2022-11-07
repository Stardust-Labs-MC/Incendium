# from: mob/main
# @s: pillagers holding holy wrath

execute as @e[type=pillager,tag=in.sanctum_guardian] at @s run effect give @a[distance=..120,predicate=incendium:structure/sanctum] mining_fatigue 10 2 true

execute if entity @e[type=pillager,tag=in.sanctum_guardian] run schedule function incendium:sanctum/guardian/mining_fatigue 60t replace
