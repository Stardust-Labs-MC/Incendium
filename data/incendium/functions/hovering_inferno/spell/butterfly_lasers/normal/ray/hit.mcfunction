scoreboard players set #hit in.fire_laser 1

execute if entity @s[scores={in.shielding=..0}] run particle flash ^ ^ ^1.5
execute if entity @s[scores={in.shielding=..0}] run effect give @s instant_damage 1 2

execute if entity @s[scores={in.shielding=1..}] run playsound minecraft:item.shield.block master @s ~ ~ ~ 1 1.52
execute if entity @s[scores={in.shielding=1..}] run item modify entity @s[predicate=incendium:holding/shield/mainhand] weapon.mainhand incendium:damage/medium
execute if entity @s[scores={in.shielding=1..}] run item modify entity @s[predicate=incendium:holding/shield/offhand] weapon.offhand incendium:damage/medium
# execute if entity @s[scores={in.shielding=1..}] run scoreboard players set @s in.shielding -10
