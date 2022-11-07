# from: entity/player/main
# @s: player wearing helm
#   OR
# from: entity/other/main
# @s: armor_stand wearing helm

execute unless score @s[type=player] in.health = @s in.old_health run function incendium:item/scouts_battle_helm/update

## Particles
scoreboard players add @s in.scouts_helmet 10
scoreboard players set @s[scores={in.scouts_helmet=360..}] in.scouts_helmet 0
scoreboard players operation $scouts_helmet in.dummy = @s in.scouts_helmet

# uses marker for rotation but displays particle at player position
execute unless entity @s[tag=in.invis] run execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=in.helper_entity,limit=1] run function incendium:item/scouts_battle_helm/helper
