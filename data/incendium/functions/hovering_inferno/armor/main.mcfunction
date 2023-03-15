# from: ../inferno/main
# @s: armor entity

# maybe not every tick?
data merge entity @s[tag=in.shield,predicate=incendium:random/1] {Fire:32767s}

execute positioned ^ ^ ^ run tp @s[tag=in.inferno_helmet] ~ ~ ~ ~ ~

execute if entity @s[tag=in.shield] rotated as @e[type=marker,tag=in.pivot] run function incendium:hovering_inferno/armor/pivot
