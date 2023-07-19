# from: ../on_shot
# @s: arrow from multiplex
# recursively calls itself

#> Sets up arrow nbt
#>   Copy nbt from arrow to a temp storage location
#>   Remove colliding nbts (UUID and Tags)
#>   Merge our new arrow nbt
# This will copy Owner and other nbt that may get added in the future
data modify storage incendium:temp arrow set from entity @s
data remove storage incendium:temp arrow.UUID
data remove storage incendium:temp arrow.Tags
data remove storage incendium:temp arrow.Pos
data remove storage incendium:temp arrow.Motion
data remove storage incendium:temp arrow.Air

tag @s add in.checked

# 13 arrows
scoreboard players add $loop in.dummy 2
function incendium:item/multiplex_crossbow/arrow/loop
kill @s
