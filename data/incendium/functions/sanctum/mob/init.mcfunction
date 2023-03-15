# from: entity/mob/init (called once)
# @s: entity

# Set names and tags
execute if entity @s[name="Sanctum Ravager"] run tag @s add in.sanctum_ravager
execute if entity @s[name="Dungeon Ravager"] run tag @s add in.sanctum_ravager
execute if entity @s[name="Sanctum Ravager"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Ravager",{"translate":"incendium.mob.sanctum.ravager.name"}]}'
execute if entity @s[name="Dungeon Ravager"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Ravager",{"translate":"incendium.mob.sanctum.ravager.name"}]}'

execute if entity @s[name="Sanctum Apostle"] run tag @s add in.sanctum_apostle
execute if entity @s[name="Sanctum Apostle"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Apostle",{"translate":"incendium.mob.sanctum.apostle.name"}]}'
execute if entity @s[type=pillager,tag=!in.sanctum_apostle] run data modify entity @s ArmorItems set value [{},{},{},{}]

execute if entity @s[name="Sanctum Cultist"] run tag @s add in.sanctum_cultist
execute if entity @s[name="Sanctum Cultist"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Cultist",{"translate":"incendium.mob.sanctum.cultist.name"}]}'

execute if entity @s[name="Sanctum Illusionist"] run tag @s add in.sanctum_illusionist
execute if entity @s[name="Sanctum Illusionist"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Illusionist",{"translate":"incendium.mob.sanctum.illusionist.name"}]}'

execute if entity @s[name="Sanctum Inquisitor"] run tag @s add in.sanctum_inquisitor
execute if entity @s[name="Sanctum Inquisitor"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Inquisitor",{"translate":"incendium.mob.sanctum.inquisitor.name"}]}'

execute if entity @s[name="Sanctum Protector"] run tag @s add in.sanctum_protector
execute if entity @s[name="Sanctum Protector"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Protector",{"translate":"incendium.mob.sanctum.protector.name"}]}'

execute if entity @s[name="Sanctum Ritualist"] run tag @s add in.sanctum_ritualist
execute if entity @s[name="Sanctum Ritualist"] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Ritualist",{"translate":"incendium.mob.sanctum.ritualist.name"}]}'

execute if entity @s[name="Sanctum Vault Guardian"] run tag @s add in.sanctum_guardian
execute if entity @s[name="Sanctum Guardian"] run tag @s add in.sanctum_guardian
execute if entity @s[type=pillager,tag=in.sanctum_guardian] run function incendium:sanctum/guardian/init

team join in.sanctum @s
