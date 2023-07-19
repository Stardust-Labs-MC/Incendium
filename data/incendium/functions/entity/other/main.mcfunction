# from: clocks/main (called tickly)
# @s: entity

execute if entity @s[type=item,tag=in.unstable_powder,nbt={OnGround:1b}] run function incendium:item/unstable_powder/explode

## proj.
# holy wrath
execute if entity @s[type=#arrows,tag=in.cluster] run function incendium:item/patron/holy_wrath/arrow
execute if entity @s[type=small_fireball,tag=in.cluster] run function incendium:item/patron/holy_wrath/fireball

# multiplex
execute if entity @s[type=#arrows,tag=in.multiplex] run function incendium:item/multiplex_crossbow/arrow/main

# trailblazer
execute if entity @s[type=#arrows,tag=in.trailblazer] run function incendium:item/trailblazer/arrow/main

# sentrys wrath
execute if entity @s[type=marker,tag=in.sentrys_wrath] run function incendium:item/sentrys_wrath/marker

# voltaic_trident
execute if entity @s[type=trident,tag=in.voltaic_trident] run function incendium:item/voltaic_trident/main

# # trident explosion
# execute if score $toggle in.constants matches 1.. if entity @s[type=marker,tag=in.trident_explosion] run schedule function incendium:item/voltaic_trident/explode/loop 1t replace

# restless spirit death
execute if entity @s[tag=in.spirit_death] unless entity @e[tag=in.spirit,distance=..1] run function incendium:entity/spirit/death

# restless nature
execute if entity @s[type=snowball,tag=in.restless_nature] run function incendium:item/restless_nature/main

## anything w/ toggle (usually proj)
execute store result entity @s[tag=in.air_toggle] Air short 1 run scoreboard players get $toggle in.constants

## armor stand
# scouts
execute if entity @s[type=armor_stand,predicate=incendium:wearing/scouts_battle_helm] run function incendium:item/scouts_battle_helm/main
