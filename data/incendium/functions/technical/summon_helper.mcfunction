####
# Summon helper marker
#  Checks if a helper exists
#   if it doesn't makes a new one
#  Called on `/reload` and every 7s
###

execute store result score $count in.dummy if entity @e[type=marker,tag=in.helper_entity]

execute unless score $count in.dummy matches 1 run kill @e[type=marker,tag=in.helper_entity]
execute unless score $count in.dummy matches 1 in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["in.helper_entity", "smithed.entity"]}
execute unless score $count in.dummy matches 1 in minecraft:overworld run tp @e[type=marker,tag=in.helper_entity] 0.0 0.0 0.0
