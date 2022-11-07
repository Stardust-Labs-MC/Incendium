# generic retreat
# @s: mob to retreat
# pos: location to retreat to

data modify storage incendium:temp entity.UUID set from entity @s UUID
scoreboard players operation $eid in.dummy = @s in.eid

summon ender_pearl ^ ^1 ^-0.1 {Tags:["in.retreat_pearl"]}
execute as @e[type=ender_pearl,tag=in.retreat_pearl,tag=!in.checked,limit=1,sort=nearest,distance=..3] facing ^ ^ ^-1 run function incendium:castle/utils/action/retreat/pearl

tag @s add in.retreating
