# Technical load
## this is split off to not add more confusion to the main load

#> Forceloading
# We need to forceload 0 0 0 for vector math
#  we add forceload on reload just incase someone unforceloads
#  we *could* remove before adding to instant load it (on startup)
#   there's no need though since entities won't load instantly anyways
forceload add 0 0

#> Dedicated helper entity
function incendium:technical/summon_helper

#> ID Tracking
# used when needing to connect players to entities, etc
#  ex: hit/kill matching
#   eid -> entity id
scoreboard objectives add in.eid dummy

# don't override if already set ;)
execute unless score $current.id in.eid matches 1.. run scoreboard players set $current.id in.eid 0

# integers
scoreboard players set #-1 in.constants -1
scoreboard players set #2 in.constants 2
