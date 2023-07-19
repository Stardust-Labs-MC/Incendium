# from (adv): technical/on_block

tag @s add in.self

# these check offhand AND mainhand
execute if entity @s[scores={in.cd_shield=..0}] if predicate incendium:holding/radiation_shield run function incendium:item/radiation_shield/on_block

execute if entity @s[scores={in.cd_shield=..0}] if predicate incendium:holding/prismatic_shield run function incendium:item/prismatic_shield/on_block

execute if entity @s[scores={in.cd_shield=..0}] if predicate incendium:holding/necrotic_shield run function incendium:item/necrotic_shield/on_block

advancement revoke @s only incendium:technical/on_block requirement
tag @s remove in.self
