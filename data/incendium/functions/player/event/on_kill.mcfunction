# from (adv): technical/on_kill

tag @s add in.self
tag @s[advancements={incendium:technical/on_kill={direct=true}}] add in.direct
tag @s add in.killer

function incendium:player/event/on_hit_or_kill
execute if entity @s[tag=in.direct, predicate=incendium:holding/scarlet_dagger, scores={in.cd_weapon=..0}] run function incendium:item/scarlet_dagger/on_hit
execute if entity @s[tag=in.direct, predicate=incendium:holding/daybreaker] anchored eyes positioned ^ ^ ^2 run function incendium:item/patron/daybreaker/on_kill

tag @s remove in.killer
tag @s remove in.direct
tag @s remove in.self
advancement revoke @s only incendium:technical/on_kill custom
advancement revoke @s only incendium:technical/on_kill direct
