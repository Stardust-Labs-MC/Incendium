# from: ./on_hit or ./on_kill
# we need to run these things even if the entity dies
#  and we don't need to access the entity directly

execute if entity @s[tag=in.direct, predicate=incendium:holding/daybreaker] run function incendium:item/patron/daybreaker/on_hit
execute if entity @s[tag=in.direct, predicate=incendium:holding/greatsword_of_sacrifice, scores={in.cd_weapon=..0}] run function incendium:item/greatsword_of_sacrifice/on_hit
execute if entity @s[tag=in.direct, predicate=incendium:holding/blazing_hatchet,scores={in.cd_weapon=..0}] anchored eyes positioned ^ ^ ^2 run function incendium:item/blazing_hatchet/on_hit
