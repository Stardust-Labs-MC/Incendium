# from: castle/main
# @s: archer

### Randomly remove tag to catch some odd edge cases
execute if entity @s[predicate=incendium:random/1] run function incendium:castle/archer/action/disengage

### Change speed based on distance
# $near_me saves an @p check
execute store success score $near_me in.dummy if entity @p[tag=in.valid_player,distance=..20]
execute unless score $near_me in.dummy matches 1 run attribute @s generic.movement_speed base set 0.1
execute if score $near_me in.dummy matches 1 run attribute @s generic.movement_speed base set 0.295

### Check if I see a player
execute anchored eyes facing entity @p[tag=in.valid_player] eyes run function incendium:castle/archer/ray/start

### Run Actions (we run before attempt for ordering)
execute if entity @s[tag=in.found_player,tag=in.loaded_arrow,predicate=incendium:random/15] facing entity @p[tag=in.valid_player] feet run function incendium:castle/archer/action/shoot/arrow

execute if entity @s[tag=in.found_player,tag=in.loaded_firework,predicate=incendium:random/20] facing entity @p[tag=in.valid_player,predicate=!incendium:player/sneaking] feet run function incendium:castle/archer/action/shoot/firework

### Attempt Actions
## Retreating?
execute if entity @s[tag=!in.chose_action,tag=!in.retreating,tag=in.engaged_player,predicate=incendium:random/35] facing entity @p[tag=in.valid_player,distance=..8] eyes run function incendium:castle/archer/action/retreat

## Loading?
# Arrow (..25 dist)
execute if entity @s[tag=!in.chose_action,tag=!in.loaded,tag=in.engaged_player,predicate=incendium:random/25] facing entity @p[tag=in.valid_player,distance=..25] eyes run function incendium:castle/archer/action/load/arrow

# Firework (25..80 dist)
execute if entity @s[tag=!in.chose_action,tag=!in.loaded,tag=in.engaged_player,predicate=incendium:random/7] facing entity @p[tag=in.valid_player,distance=25..80] eyes run function incendium:castle/archer/action/load/firework

tag @s remove in.found_player
tag @s remove in.chose_action
