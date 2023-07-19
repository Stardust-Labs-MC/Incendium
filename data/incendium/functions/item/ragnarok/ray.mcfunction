# from: ./on_shot
# @s: ragnarok arrow

tag @p[tag=in.self,distance=..5] add laser

scoreboard players operation $ragnarok in.dummy = @s in.ragnarok
scoreboard players operation $random in.dummy = $ragnarok in.dummy
scoreboard players remove $random in.dummy 20

execute if score $ragnarok in.dummy matches 5.. run function incendium:item/ragnarok/lightning/start_ray

execute if score $ragnarok in.dummy matches 100.. if predicate incendium:random/other/x if predicate incendium:random/50 rotated ~10 ~5 run function incendium:item/ragnarok/lightning/start_ray
execute if score $ragnarok in.dummy matches 100.. if predicate incendium:random/other/x if predicate incendium:random/50 rotated ~-10 ~5 run function incendium:item/ragnarok/lightning/start_ray

tag @a remove laser

kill @s
