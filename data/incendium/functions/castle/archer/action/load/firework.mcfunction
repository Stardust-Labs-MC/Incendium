# > loading arrow

# face nearby player
tp @s ~ ~ ~ facing entity @p[tag=in.valid_player] eyes

# audiovisual
playsound minecraft:item.crossbow.loading_end player @a[distance=..30] ~ ~ ~ 2 0.85 0.05
item replace entity @s weapon.mainhand with crossbow{ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b},{},{}],Charged:1b}

# tags
tag @s add in.loaded_firework
tag @s add in.chose_action
tag @s add in.loaded
