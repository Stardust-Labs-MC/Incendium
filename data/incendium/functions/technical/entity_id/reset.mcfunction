# from ./check
# reset

scoreboard players reset * in.eid
tag @e[tag=in.eid_0] remove in.eid_0
tag @e[tag=in.eid_1] remove in.eid_1
tag @e[tag=in.eid_2] remove in.eid_2
tag @e[tag=in.eid_3] remove in.eid_3
tag @e[tag=in.eid_4] remove in.eid_4
tag @e[tag=in.eid_5] remove in.eid_5
tag @e[tag=in.eid_6] remove in.eid_6
tag @e[tag=in.eid_7] remove in.eid_7
tag @e[tag=in.eid_8] remove in.eid_8
tag @e[tag=in.eid_9] remove in.eid_9
tag @e[tag=in.eid_10] remove in.eid_10
tag @e[tag=in.eid_11] remove in.eid_11
tag @e[tag=in.eid_12] remove in.eid_12
tag @e[tag=in.eid_13] remove in.eid_13
tag @e[tag=in.eid_14] remove in.eid_14

tellraw @a[tag=in.admin,tag=in.debug] {"translate": "%1$s%4733088$s","with":["Resetting entity IDs",{"translate":"incendium.system.eid.reset"}], "color": "#ff8000"}
