# from: ../shot
# @s: arrow

scoreboard players operation @s in.trailblazer = $trailblazer in.dummy
data modify storage incendium:temp arrow set from entity @s
data remove storage incendium:temp arrow.UUID

execute store result score $x in.dummy run data get storage incendium:temp arrow.Motion[0] 1000
execute store result score $y in.dummy run data get storage incendium:temp arrow.Motion[1] 1000
execute store result score $z in.dummy run data get storage incendium:temp arrow.Motion[2] 1000

# execute store result score $dmg in.dummy run data get storage incendium:temp arrow.damage 100

scoreboard players operation $trailblazer in.dummy > #0 in.constants
scoreboard players operation $trailblazer in.dummy < #100 in.constants

# scoreboard players remove $dmg in.dummy 100
scoreboard players operation $dmg in.dummy = $trailblazer in.dummy
scoreboard players operation $dmg in.dummy /= #2 in.constants
scoreboard players operation $dmg in.dummy += $power in.dummy
scoreboard players operation $dmg in.dummy *= #3 in.constants

scoreboard players add $trailblazer in.dummy 150
scoreboard players operation $x in.dummy *= $trailblazer in.dummy
scoreboard players operation $y in.dummy *= $trailblazer in.dummy
scoreboard players operation $z in.dummy *= $trailblazer in.dummy


execute store result storage incendium:temp arrow.Motion[0] double 0.00001 run scoreboard players get $x in.dummy
execute store result storage incendium:temp arrow.Motion[1] double 0.00001 run scoreboard players get $y in.dummy
execute store result storage incendium:temp arrow.Motion[2] double 0.00001 run scoreboard players get $z in.dummy
execute store result storage incendium:temp arrow.damage double 0.01 run scoreboard players get $dmg in.dummy

data modify storage incendium:temp arrow.PierceLevel set value 5b
data modify storage incendium:temp arrow.NoGravity set value 1b
data modify storage incendium:temp arrow.Fire set value 1000s
data modify entity @s {} merge from storage incendium:temp arrow

playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.1
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.65
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 1.6
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 0.25 1.69
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 0.25 1.5

tag @s add in.checked
tag @s add in.trailblazer
tag @s add in.ticking_entity
