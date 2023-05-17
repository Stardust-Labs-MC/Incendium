####
# General Aim Utility
# -> Call to aim towards nearest player
# Output: incendium:temp aim.vector
# @s: entity to be launched
####

data remove storage incendium:temp aim
function incendium:technical/summon_helper
execute as @e[type=marker,tag=in.helper_entity,limit=1] run function incendium:misc/aim/helper

tellraw @a[tag=in.admin, tag=in.debug] {"storage": "incendium:temp", "nbt": "aim.vector"}
