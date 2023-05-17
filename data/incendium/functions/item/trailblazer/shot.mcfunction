# from: player/main
# @s: player firing trailblazer

scoreboard players operation $trailblazer in.dummy = @s in.trailblazer

execute if entity @s[predicate=incendium:holding/trailblazer/mainhand] store result score $power in.dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:power"}].lvl 10
execute if entity @s[predicate=incendium:holding/trailblazer/offhand] store result score $power in.dummy run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:power"}].lvl 10

execute if entity @s[scores={in.trailblazer=15..}] as @e[type=#arrows,tag=!in.checked,distance=..3] run function incendium:item/trailblazer/arrow/init

execute unless entity @s[scores={in.trailblazer=15..}] run function incendium:item/trailblazer/fail
