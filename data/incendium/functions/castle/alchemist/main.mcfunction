# from: ../mob/main
# @s: alchemist

### Check if I see a player
execute anchored eyes facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/ray/start

### RUN AWAY!
execute if entity @s[tag=!in.retreating,predicate=incendium:random/20] if entity @a[tag=in.valid_player,distance=..6] facing entity @p[tag=in.valid_player,distance=..7] eyes run function incendium:castle/alchemist/action/retreat
# execute if predicate incendium:random/5 facing entity @p[tag=in.valid_player,distance=..3] eyes run function incendium:castle/alchemist/action/run_past

### Randomly remove some tags used to prevent stuff from happening when not relevant
execute if predicate incendium:random/1 run tag @s remove in.engaged_player
execute if predicate incendium:random/0_5 run tag @s remove in.used_regen


### Run defensive actions
execute if entity @s[tag=in.milk,tag=!in.chose_action] run function incendium:castle/utils/use/milk
execute if entity @s[tag=in.fire_resistance,tag=!in.chose_action,predicate=!incendium:effects/fire_resistance] run function incendium:castle/utils/use/fire_resistance
execute if entity @s[tag=in.regen,tag=!in.chose_action] run function incendium:castle/utils/use/regen
execute if entity @s[tag=in.strong_healing,tag=!in.chose_action] run function incendium:castle/utils/use/strong_healing

### Prepare defensive actions
execute if entity @s[tag=!in.mainhand_item,tag=!in.chose_action,predicate=incendium:effects/poison] run function incendium:castle/utils/equip/milk
execute if entity @s[tag=in.engaged_player,tag=!in.mainhand_item,tag=!in.chose_action,predicate=incendium:effects/on_fire,predicate=!incendium:effects/fire_resistance] run function incendium:castle/utils/equip/fire_resistance
execute if entity @s[predicate=incendium:random/10,tag=in.engaged_player,tag=!in.used_regen,tag=!in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] run function incendium:castle/utils/equip/regen
execute if entity @s[predicate=incendium:random/1,tag=in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] run function incendium:castle/utils/equip/strong_healing

### Run offensive actions
execute if entity @s[predicate=incendium:random/15,tag=in.found_player,tag=in.slowness,tag=!in.chose_action] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/throw/slowness
execute if entity @s[predicate=incendium:random/15,tag=in.found_player,tag=in.weakness,tag=!in.chose_action] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/throw/weakness
execute if entity @s[predicate=incendium:random/15,tag=in.found_player,tag=in.harming,tag=!in.chose_action] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/throw/harming
execute if entity @s[predicate=incendium:random/15,tag=in.found_player,tag=in.poison,tag=!in.chose_action] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/throw/poison


### Prepare offensive actions
execute if entity @s[predicate=incendium:random/10,tag=in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] facing entity @p[tag=in.valid_player, distance=..6] eyes run function incendium:castle/utils/equip/weakness
execute if entity @s[predicate=incendium:random/10,tag=in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] facing entity @p[tag=in.valid_player, distance=..6] eyes run function incendium:castle/utils/equip/slowness
execute if entity @s[predicate=incendium:random/10,tag=in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] facing entity @p[tag=in.valid_player, distance=..6] eyes run function incendium:castle/utils/equip/harming

## Player is far away?
execute if entity @s[predicate=incendium:random/20,tag=in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] facing entity @p[tag=in.valid_player,distance=6..10] eyes run function incendium:castle/utils/equip/poison
execute if entity @s[predicate=incendium:random/10,tag=in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] facing entity @p[tag=in.valid_player,distance=6..10] eyes run function incendium:castle/utils/equip/harming
execute if entity @s[predicate=incendium:random/20,tag=in.found_player,tag=!in.mainhand_item,tag=!in.chose_action] facing entity @p[tag=in.valid_player,distance=10..30] eyes run function incendium:castle/utils/equip/harming


tag @s remove in.found_player
tag @s remove in.chose_action
