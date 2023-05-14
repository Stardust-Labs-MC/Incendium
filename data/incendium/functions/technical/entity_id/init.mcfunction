##############################
# Entity ID Setting
#  Used in the hit matching system
#  Allows for 100% hit matching
#  Thanks to CW and nph
# -> @s: entity to init
##############################

# Assign a new id to the entity
execute store result score @s in.eid run scoreboard players add $current.id in.eid 1

# Get bit 0
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_0
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 1
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_1
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 2
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_2
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 3
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_3
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 4
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_4
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 5
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_5
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 6
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_6
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 7
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_7
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 8
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_8
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 9
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_9
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 10
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_10
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 11
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_11
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 12
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_12
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 13
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_13
scoreboard players operation @s in.eid /= #2 in.constants

# Get bit 14
scoreboard players operation #val in.dummy = @s in.eid
scoreboard players operation #val in.dummy %= #2 in.constants
execute if score #val in.dummy matches 1 run tag @s add in.eid_14

scoreboard players operation @s in.eid = $current.id in.eid
