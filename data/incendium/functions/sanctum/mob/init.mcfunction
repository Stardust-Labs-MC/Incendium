# from: entity/mob/init (called once)
# @s: entity

execute if entity @s[name="Dungeon Ravager"] run tag @s add in.sanctum_ravager
execute if entity @s[name="Sanctum Apostle"] run tag @s add in.sanctum_apostle
execute if entity @s[name="Sanctum Cultist"] run tag @s add in.sanctum_cultist
execute if entity @s[name="Sanctum Guardian"] run tag @s add in.sanctum_guardian
execute if entity @s[name="Sanctum Illusionist"] run tag @s add in.sanctum_illusionist
execute if entity @s[name="Sanctum Inquisitor"] run tag @s add in.sanctum_inquisitor
execute if entity @s[name="Sanctum Protector"] run tag @s add in.sanctum_protector
execute if entity @s[name="Sanctum Ravager"] run tag @s add in.sanctum_ravager
execute if entity @s[name="Sanctum Ritualist"] run tag @s add in.sanctum_ritualist
execute if entity @s[name="Sanctum Vault Guardian"] run tag @s add in.sanctum_vault_guardian

# pillager
execute if entity @s[type=pillager,tag=in.sanctum_guardian] run function incendium:sanctum/guardian/init

team join in.sanctum @s
