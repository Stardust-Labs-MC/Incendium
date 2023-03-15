# from: entity/other/main
# @s: trailblazer arrow

# temp no grav
scoreboard players add @s in.timer 1
data modify entity @s[scores={in.timer=2..3}] NoGravity set value 0b

scoreboard players operation $random in.dummy = @s in.trailblazer

# fire trail
execute if entity @s[scores={in.timer=2..60},predicate=incendium:random/other/x] run summon small_fireball ~ ~ ~ {Tags:["in.checked"],Motion:[0.0d,-0.1d,0.0d],power:[0.0d,-0.05d,0.0d]}

execute if entity @s[scores={in.timer=2..60,in.trailblazer=75..},predicate=incendium:random/other/x] run summon small_fireball ~ ~ ~ {Tags:["in.checked"],Motion:[0.0d,1.0d,0.0d],power:[0.0d,-0.1d,0.0d]}

execute if entity @s[nbt={inGround:1b}] run function incendium:item/trailblazer/arrow/explode
execute if block ~ ~ ~ water run function incendium:item/trailblazer/arrow/water
execute if entity @s[scores={in.timer=60..}] run function incendium:item/trailblazer/arrow/explode

particle flame ~ ~ ~ 0 0 0 0 1 force
particle small_flame ~ ~ ~ .2 .2 .2 .1 10 force
