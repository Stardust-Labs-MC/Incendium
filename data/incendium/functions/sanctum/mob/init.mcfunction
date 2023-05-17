# from: entity/mob/init (called once)
# @s: entity

## Set names and other important stuff

# Ravager
execute if entity @s[type=ravager,tag=in.sanctum_ravager] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Ravager",{"translate":"incendium.mob.sanctum.ravager.name"}]}'

# Pillager
execute if entity @s[type=pillager,tag=in.sanctum_apostle] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Apostle",{"translate":"incendium.mob.sanctum.apostle.name"}]}'

execute if entity @s[type=pillager,tag=in.sanctum_cultist] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Cultist",{"translate":"incendium.mob.sanctum.cultist.name"}]}'
execute if entity @s[type=pillager,tag=in.sanctum_cultist] run data modify entity @s ArmorItems set value [{},{},{},{}]

execute if entity @s[type=pillager,tag=in.sanctum_guardian] run function incendium:sanctum/guardian/init

# Illusioner
execute if entity @s[type=illusioner,tag=in.sanctum_illusionist] run function incendium:entity/misc_init/illusionist

# Vindicator
execute if entity @s[type=vindicator,tag=in.sanctum_inquisitor] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Inquisitor",{"translate":"incendium.mob.sanctum.inquisitor.name"}]}'

execute if entity @s[type=vindicator,tag=in.sanctum_protector] run function incendium:sanctum/mob/protector_init

# Evoker
execute if entity @s[type=evoker,tag=in.sanctum_ritualist] run data modify entity @s CustomName set value '{"translate": "%1$s%4733088$s","with":["Sanctum Ritualist",{"translate":"incendium.mob.sanctum.ritualist.name"}]}'

team join in.sanctum @s
