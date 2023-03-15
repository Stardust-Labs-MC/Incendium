# from: ./main
# @s: player wearing helm who health updated

## Speed Stuff
# does a bit of math to get a good speed value
# grab max health (x10000)
execute store result score $speed in.dummy run attribute @s minecraft:generic.max_health get 10000

# grab health (x1000)
scoreboard players operation $health in.dummy = @s in.health
scoreboard players operation $health in.dummy *= #1000 in.constants

# speed = max_health / health = (x10)
scoreboard players operation $speed in.dummy /= $health in.dummy

# speed -= 10
scoreboard players remove $speed in.dummy 10

# cap at 25
scoreboard players operation $speed in.dummy < #25 in.constants

# replace helm ;)
item modify entity @s armor.head incendium:scouts_battle_helm/update
stopsound @a[distance=..10] * minecraft:item.armor.equip_netherite
