# from: ../mob/main
# @s: knight

### Check if I see a player
# normal ray
execute anchored eyes facing entity @p[tag=in.valid_player] eyes run function incendium:castle/knight/ray/eyes/start

# feet ray
execute anchored feet positioned ~ ~0.2 ~ facing entity @p[tag=in.valid_player] feet run function incendium:castle/knight/ray/feet/start

### Use items
# fire res
execute if entity @s[tag=in.guard,tag=in.fire_resistance,tag=!in.chose_action,predicate=!incendium:effects/fire_resistance] run function incendium:castle/utils/use/fire_resistance

# gapple
execute if entity @s[predicate=incendium:random/15,tag=in.engaged_player,tag=in.golden_apple,tag=!in.chose_action] run function incendium:castle/utils/use/golden_apple

### Equip items
# gapple
execute if entity @s[predicate=incendium:random/1,tag=in.engaged_player,tag=!in.chose_action] run function incendium:castle/utils/equip/golden_apple

# fire res
execute if entity @s[predicate=incendium:random/15,tag=in.engaged_player,tag=in.guard,tag=!in.chose_action,predicate=incendium:effects/on_fire,predicate=!incendium:effects/fire_resistance] run function incendium:castle/utils/equip/fire_resistance


### Randomly remove some tags used to prevent stuff from happening when not relevant
tag @s[predicate=incendium:random/0_5] remove in.engaged_player

### Equip some items dynamically
execute if entity @s[tag=in.engaged_player,tag=!in.found_feet,tag=!in.pick,tag=!in.chose_action] if entity @p[tag=in.valid_player,distance=..6] run function incendium:castle/knight/action/equip/pickaxe

execute if entity @s[tag=in.found_feet,tag=in.found_player,tag=!in.sword,tag=!in.chose_action] run function incendium:castle/knight/action/equip/sword


### Knight smash?
execute if entity @s[predicate=incendium:random/50,tag=in.engaged_player,tag=in.pick,tag=!in.found_player] positioned ~ ~1.25 ~ anchored eyes facing entity @p[tag=in.valid_player, distance=..6] eyes run function incendium:castle/knight/action/smash/start

execute if entity @s[predicate=incendium:random/50,tag=in.engaged_player,tag=in.pick,tag=!in.found_feet] anchored feet positioned ~ ~0.1 ~ anchored eyes facing entity @p[tag=in.valid_player, distance=..6] feet run function incendium:castle/knight/action/smash/start

tag @s remove in.found_player
tag @s remove in.found_feet
tag @s remove in.chose_action
