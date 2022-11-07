# kill all entities involved

# no drops
data modify entity @e[type=blaze,tag=in.hovering_inferno,limit=1] DeathLootTable set value 'minecraft:empty'

kill @e[tag=in.inferno_entity]
bossbar set incendium:inferno players

data remove storage incendium:main inferno
