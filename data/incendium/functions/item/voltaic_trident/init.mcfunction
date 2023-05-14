# from: ../on_throw (called once)
# @s: entity

# summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["in.voltaic_trident", "in.rotator"]}
# summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["in.voltaic_trident", "in.left", "in.rotated"]}
# summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["in.voltaic_trident", "in.right", "in.rotated"]}

# scoreboard players operation @s in.trident_id = $id in.dummy
# scoreboard players operation @e[type=area_effect_cloud,tag=in.voltaic_trident,tag=!in.checked,distance=..1,limit=3] in.trident_id = $id in.dummy

execute store result score @s in.trident_id run scoreboard players add $latest.id in.trident_id 1

execute store result score @s in.dummy if data entity @s Trident.tag.Enchantments[{id:"minecraft:channeling"}]

execute if entity @s[scores={in.dummy=1..}] run summon lightning_bolt
execute if entity @s[scores={in.dummy=1..}] run tellraw @p[tag=in.self] ["", {"translate":"incendium.item.voltaic_trident.name","fallback":"Voltaic Trident", "color": "#8844ff", "bold": true}, " ", {"translate":"incendium.item.voltaic_trident.system.unstable","fallback":"struggles to be stable with the channeling enchantment", "color": "#4400aa"}]

data modify entity @s[scores={in.dummy=..0}] Trident.tag.player_uuid set from storage incendium:temp player.UUID

tag @s[scores={in.dummy=..0}] add in.ticking_entity
tag @s[scores={in.dummy=..0}] add in.voltaic_trident
tag @s[scores={in.dummy=..0}] add in.live
tag @s[scores={in.dummy=..0}] add in.checked
