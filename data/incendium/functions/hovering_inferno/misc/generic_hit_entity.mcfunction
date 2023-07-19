scoreboard players set #hit in.fire_laser 1

execute if entity @s[scores={in.shielding=..0}] run particle flash ^ ^ ^1
execute if entity @s[scores={in.shielding=..0}] run effect give @s instant_damage

execute if entity @s[scores={in.shielding=1..}] run playsound minecraft:item.shield.block master @s ~ ~ ~ 1 1.52
execute if entity @s[scores={in.shielding=1..}] run item modify entity @s[predicate=incendium:holding/shield/mainhand] weapon.mainhand incendium:damage
execute if entity @s[scores={in.shielding=1..}] run item modify entity @s[predicate=incendium:holding/shield/offhand] weapon.offhand incendium:damage
execute if entity @s[scores={in.shielding=1..}] run item replace entity @s[predicate=incendium:holding/shield/mainhand_no_durability] weapon.mainhand with air
execute if entity @s[scores={in.shielding=1..}] run item replace entity @s[predicate=incendium:holding/shield/offhand_no_durability] weapon.offhand with air
execute if entity @s[scores={in.shielding=1..}] run scoreboard players set @s in.shielding -10
