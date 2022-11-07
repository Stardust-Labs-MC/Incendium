# from: entity/mob/init (called once)
# @s: entity

# pillager
execute if entity @s[type=pillager,tag=in.sanctum_guardian] run function incendium:sanctum/guardian/main
