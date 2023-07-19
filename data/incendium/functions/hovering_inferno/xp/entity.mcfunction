# yum

execute if predicate incendium:random/10 run summon experience_orb ~5 ~2 ~ {Value:1000}
execute if predicate incendium:random/5 run summon experience_orb ~-5 ~2 ~ {Value:1500}
execute if predicate incendium:random/20 run summon experience_orb ~ ~2 ~5 {Value:500}
execute if predicate incendium:random/10 run summon experience_orb ~ ~2 ~-5 {Value:750}
execute if predicate incendium:random/20 run summon experience_orb ~5 ~2 ~5 {Value:300}
execute if predicate incendium:random/20 run summon experience_orb ~-5 ~2 ~-5 {Value:250}
execute if predicate incendium:random/20 run summon experience_orb ~5 ~ ~-5 {Value:350}
execute if predicate incendium:random/10 run summon experience_orb ~-5 ~ ~5 {Value:1000}

# this loop will die if the inferno dies :D
schedule function incendium:hovering_inferno/xp/main 4t replace
