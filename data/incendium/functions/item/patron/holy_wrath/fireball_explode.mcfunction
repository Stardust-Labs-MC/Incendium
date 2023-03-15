# from: ./fireball
# @s: fireball

data modify storage incendium:temp player.UUID set from entity @s Item.tag.player.UUID

summon firework_rocket ~ ~ ~ {Silent:1b,NoGravity:0b,Life:0,LifeTime:0,Motion:[0.0,0.5,0.0],Tags:["d1","cluster","in.holy_wrath_firework"],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16777215],FadeColors:[I;16774502]},{Type:4,Colors:[I;16774502],FadeColors:[I;16777215]}]}}}}

execute as @e[type=firework_rocket,tag=in.holy_wrath_firework,tag=!in.checked,limit=1,distance=..1] run function incendium:misc/firework

execute as @e[type=#incendium:mobs_no_player,distance=..2,tag=!in.sanctum_guardian] run function incendium:item/patron/holy_wrath/kick

kill @s
