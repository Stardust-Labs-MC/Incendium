# from: ../mob/main
# @s: blacksmith

### Randomly remove some tags used to prevent stuff from happening when not relevant
#execute if predicate incendium:random/5 run tag @s remove engaged_player

### Check if I see a player
execute anchored eyes facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/ray/start

### Run defensive actions
execute if entity @s[tag=in.fire_resistance,tag=!in.chose_action,predicate=!incendium:effects/fire_resistance] run function incendium:castle/utils/use/fire_resistance

### Prepare defensive actions
execute if entity @s[tag=in.engaged_player,tag=!in.mainhand_item,tag=!in.chose_action,predicate=!incendium:effects/fire_resistance] run function incendium:castle/utils/equip/fire_resistance

### Run offensive actions
execute if entity @s[predicate=incendium:random/20,tag=in.found_player,tag=in.tnt,tag=!in.chose_action] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/blacksmith/action/throw_tnt


### Prepare offensive actions
# note, tag + predicate is cheaper than @a which is cheaper than nbt=
# order matters so we can utilize this to avoid computation
execute if entity @s[predicate=incendium:random/30,tag=in.found_player,tag=!in.offhand_item,tag=!in.chose_action,predicate=incendium:effects/fire_resistance] facing entity @p[tag=in.valid_player,distance=..25] eyes run function incendium:castle/utils/equip/tnt

tag @s remove in.found_player
tag @s remove in.chose_action
