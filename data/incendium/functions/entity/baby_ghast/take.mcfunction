# from: ./sched_take
# @s: baby ghast head (allay)

#Return item back to user
execute at @a[limit=1,tag=in.self] if entity @a[limit=1,tag=in.self,gamemode=!creative] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:fire_charge",Count:1b},PickupDelay:1s,Tags:["in.return"]}
execute at @a[limit=1,tag=in.self] if entity @a[limit=1,tag=in.self,gamemode=!creative] run data modify entity @e[type=item,distance=..1,limit=1,sort=nearest,tag=in.return] Item set from entity @e[type=allay,tag=in.baby_head,distance=..5,limit=1,sort=nearest] HandItems[0]
#...but only if the item was accident/unintended
execute at @a[limit=1,tag=in.self] if entity @e[type=item,distance=..1,limit=1,sort=nearest,tag=in.return,nbt={Item:{id:"minecraft:fire_charge",Count:1b}}] run kill @e[type=item,distance=..1,limit=1,sort=nearest,tag=in.return]

#Remove item from allay
execute as @a[limit=1,tag=in.self] at @a[limit=1,tag=in.self] positioned ^ ^ ^2 as @e[type=allay,tag=in.baby_head,distance=..5,limit=1,sort=nearest] run item replace entity @s weapon with air

#Reset
advancement revoke @a[limit=1,tag=in.self] only incendium:technical/give_ghastling requirement
tag @a[limit=1,tag=in.self] remove in.self