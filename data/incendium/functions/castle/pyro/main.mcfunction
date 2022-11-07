# @s: pyro actions

### Chance to reset tags
tag @s remove in.leaping
execute if predicate incendium:random/1 run tag @s remove in.engaged_player
execute if predicate incendium:random/1 run tag @s remove in.used_burst
execute if predicate incendium:random/3 run tag @s remove in.used_pearl
execute if predicate incendium:random/1 run tag @s remove in.used_leap

### Check if I see a player
execute anchored eyes facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/ray/start


### Execute defensive actions
# execute if entity @s[tag=in.engaged_player,tag=!in.chose_action,tag=in.pearl] facing entity @p[tag=in.valid_player,distance=..4] eyes run function incendium:castle/utils/use/pearl

### Prepare defensive actions
#execute if entity @s[tag=engaged_player] unless entity @s[tag=chose_action] unless entity @s[tag=used_pearl] if entity @a[distance=..3] if predicate incendium:70_percent facing entity @p[distance=..4] eyes anchored eyes run function incendium:piglin_mage/pyro/equip/pearl


### Execute offensive actions
execute if entity @s[predicate=incendium:random/5,tag=in.engaged_player,tag=in.found_player,tag=!in.used_leap,tag=!in.chose_action] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/utils/action/leap
execute if entity @s[predicate=incendium:random/15,tag=in.engaged_player,tag=in.found_player,tag=!in.chose_action,tag=in.firework] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/pyro/action/firework_spread
execute if entity @s[tag=in.engaged_player,tag=in.found_player,tag=!in.chose_action,tag=in.firework] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/pyro/action/firework_burst
execute if entity @s[tag=in.engaged_player,tag=in.found_player,tag=!in.chose_action,tag=in.flint_and_steel] facing entity @p[tag=in.valid_player] eyes run function incendium:castle/pyro/action/summon_fire

### Prepare offensive actions
execute if entity @s[predicate=incendium:random/5,tag=in.engaged_player,tag=!in.chose_action,tag=!in.offhand_item] if entity @a[distance=1..32] run function incendium:castle/utils/equip/firework
execute if entity @s[predicate=incendium:random/5,tag=in.engaged_player,tag=!in.chose_action,tag=!in.offhand_item] if entity @p[tag=in.valid_player,distance=1..32,predicate=incendium:effects/fire_resistance] run function incendium:castle/utils/equip/firework
execute if entity @s[predicate=incendium:random/25,tag=in.engaged_player,tag=!in.chose_action,tag=!in.offhand_item] if entity @p[tag=in.valid_player,distance=1..32] unless entity @p[tag=in.valid_player,predicate=incendium:effects/fire_resistance] run function incendium:castle/utils/equip/flint_and_steel

tag @s remove in.found_player
tag @s remove in.chose_action
