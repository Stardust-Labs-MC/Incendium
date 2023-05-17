# from (adv): technical/sentrys_wrath

tag @s add in.self

data modify storage incendium:temp player.UUID set from entity @s UUID
data modify storage incendium:temp player.Rotation set from entity @s Rotation

execute if entity @s[scores={in.cd_wrath=1..}] run function incendium:item/sentrys_wrath/fail
execute unless entity @s[scores={in.cd_wrath=1..}] run function incendium:item/sentrys_wrath/summon
kill @e[type=spectral_arrow,tag=!in.checked,distance=..5]

advancement revoke @s only incendium:technical/sentrys_wrath requirement
tag @s remove in.self
