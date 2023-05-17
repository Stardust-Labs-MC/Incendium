# from: ../mob/main
# @s: paratrooper

### Randomly remove some tags used to prevent stuff from happening when not relevant
#execute if predicate incendium:5_percent run tag @s remove engaged_player


execute if entity @s[tag=in.hit_ground] run function incendium:castle/paratrooper/action/become_knight

### Check if I see a player
execute if predicate incendium:random/10 positioned ~ ~4 ~ facing entity @p[tag=in.valid_player] eyes run function incendium:castle/paratrooper/ray/start

### Run defensive actions
execute if entity @s[tag=in.flying] run function incendium:castle/paratrooper/action/flying
execute if entity @s[tag=in.jumped] run function incendium:castle/paratrooper/action/jumped

#execute if entity @s[tag=jumped,tag=flying] if predicate incendium:10_percent positioned ~ ~1 ~ facing entity @p feet run function incendium:piglin_mage/firework/paratrooper
execute if entity @s[tag=in.engaged_player,tag=!in.jumped] run function incendium:castle/paratrooper/action/leap
### Prepare defensive actions

### Run offensive actions


### Prepare offensive actions

tag @s remove in.found_player
tag @s remove in.chose_action
