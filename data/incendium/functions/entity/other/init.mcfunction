# from: clocks/main (called once)
# @s: entity

tag @s add in.checked

#> Holy Wrath Arrow

#> Inferno
# old altars
execute if entity @s[type=armor_stand,tag=altar] run function incendium:hovering_inferno/altar/summon 

# summoning
execute unless score $disabled in.inferno matches 1 unless score $running in.inferno matches 1 if entity @s[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if entity @e[type=marker,tag=in.altar,distance=..4] run function incendium:hovering_inferno/summon

execute if score $disabled in.inferno matches 1 if entity @s[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if entity @e[type=marker,tag=in.altar,distance=..3] run function incendium:hovering_inferno/messages/summon_disabled

execute if score $disabled in.inferno matches 0 if score $running in.inferno matches 1 if entity @s[type=item,nbt={Item:{id:"minecraft:nether_star"}}] if entity @e[type=marker,tag=in.altar,distance=..3] run function incendium:hovering_inferno/messages/inferno_already_running


#> Castle
# elytra
kill @s[type=item,nbt={Item:{tag:{incendium:{item:'paratrooper_wings'}}}}]

# powder
execute if entity @s[type=item,nbt={Item:{tag:{incendium:{item:'unstable_powder'}}}}] run function incendium:item/unstable_powder/init

# alchemist
data modify entity @s[type=potion,tag=in.alchemist_potion] NoGravity set value 0b

# randomize
loot replace entity @s[type=armor_stand,tag=randomize] armor.head loot incendium:castle/stand/armor
tag @s[type=armor_stand,tag=randomize] add in.randomized
tag @s remove randomize

execute if entity @s[type=armor_stand,tag=castle_detector] run summon marker ~ ~ ~ {Tags:["in.castle", "in.castle_detector"]}
kill @s[type=armor_stand,tag=castle_detector]

# vampire_or_sacrifice
loot replace entity @s[type=minecraft:armor_stand,tag=sword] weapon.mainhand loot incendium:artifact/scarlet_or_sacrifice

# vampire_or_sacrifice
loot replace entity @s[type=minecraft:armor_stand,tag=in.sword] weapon.mainhand loot incendium:artifact/scarlet_or_sacrifice

#> Voltaic Lightning
execute if entity @s[type=area_effect_cloud,tag=in.thunder] run function incendium:entity/voltaic_lightning/spawn

# Quartz Tower GHastling init
execute if entity @s[type=marker,tag=in.tower_ghastling] run function incendium:entity/baby_ghast/init