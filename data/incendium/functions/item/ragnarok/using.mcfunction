# from: player/main
# @s: player using ragnarok

tag @s add in.self

scoreboard players add @s in.ragnarok 1

# update?
scoreboard players operation $update in.dummy = @s in.ragnarok
scoreboard players operation $update in.dummy %= #40 in.constants

execute if entity @s[scores={in.ragnarok=200..}] anchored eyes run particle minecraft:electric_spark ^ ^ ^0.3 0.5 1 0.5 0.2 5
execute if entity @s[scores={in.ragnarok=200..}] anchored eyes run particle minecraft:electric_spark ^ ^ ^0.3 0.5 1 0.5 0.2 10 force

execute if score $update in.dummy matches 0 if entity @s[scores={in.ragnarok=..200}] run function incendium:item/ragnarok/update

execute if entity @s[scores={in.ragnarok=250..}] run function incendium:item/ragnarok/unstable

advancement revoke @s only incendium:technical/using/ragnarok requirement
tag @s remove in.self
