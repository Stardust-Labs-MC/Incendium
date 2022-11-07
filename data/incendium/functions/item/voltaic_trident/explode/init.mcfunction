# from ../damage
# @s: init boom AEC

data modify entity @s data.player.UUID set from storage incendium:temp player.UUID
scoreboard players operation @s in.trident_id = $id in.dummy

tag @s add in.checked

schedule function incendium:item/voltaic_trident/explode/loop 1t replace
