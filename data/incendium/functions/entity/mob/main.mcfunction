# from: clocks/main
# @s: ticking entity

# desert blaze
execute if entity @s[tag=in.dune_blaze] run function incendium:entity/dune_blaze/main

# sentry
execute if entity @s[tag=in.sentry] run function incendium:entity/sentry/main

# restless spirit
execute if entity @s[tag=in.spirit] run function incendium:entity/spirit/main

# toxic slime
execute if entity @s[tag=in.toxic_slime] run function incendium:entity/toxic_slime/main

# castle
data modify entity @s[tag=in.castle,tag=!in.active,tag=!in.NoAI] NoAI set value 1b
tag @s[tag=in.castle,tag=!in.active,tag=!in.NoAI] add in.NoAI
execute if entity @s[tag=in.castle,tag=in.active] run function incendium:castle/mob/main

# sanctum
execute if entity @s[tag=in.sanctum_guardian] run function incendium:sanctum/guardian/main

# boss
execute if entity @s[tag=in.hovering_inferno] run function incendium:hovering_inferno/main
