# from: clocks/main
# @s: player tick

# say hello?
# no, I don't think I will :)

#> in.valid_player
#>   a non-invis player, non-creative, non-spectator player
#>   used extensively in custom mob targetting and more
tag @s remove in.valid_player
tag @s remove in.survival_player
tag @s[gamemode=survival] add in.survival_player
tag @s[gamemode=adventure] add in.survival_player
tag @s[tag=in.survival_player,tag=!in.invis] add in.valid_player

# check eid resets
execute unless score @s in.eid matches 0..32767 run function incendium:technical/entity_id/check

# are scores set?
execute unless entity @s[scores={in.cd_shield=-1..}] run scoreboard players add @s in.cd_shield 0
execute unless entity @s[scores={in.cd_prism=-1..}] run scoreboard players add @s in.cd_prism 0
execute unless entity @s[scores={in.cd_charm=-1..}] run scoreboard players add @s in.cd_charm 0
execute unless entity @s[scores={in.cd_corrupt=-1..}] run scoreboard players add @s in.cd_corrupt 0

#function incendium:player/advancements/main

# items
# shielding
scoreboard players set @s[advancements={incendium:technical/using/shield={requirement=false}}] in.shielding 0
execute if entity @s[advancements={incendium:technical/using/shield=true}] run function incendium:player/event/shielding


## scarlet dagger particles
execute if entity @s[predicate=incendium:random/25,predicate=incendium:holding/scarlet_dagger] anchored eyes positioned ^ ^ ^1 run particle minecraft:dust 1 0.2 0 1 ~ ~ ~ 0.6 0.6 0.6 0 2 force

## voltaic trident
execute if entity @s[scores={in.trident=1..}] run function incendium:item/voltaic_trident/on_throw
execute if entity @s[predicate=incendium:holding/voltaic_trident] run function incendium:item/voltaic_trident/holding

## hefty pickaxe
execute if entity @s[scores={in.netherrack=1..},predicate=incendium:holding/hefty_pickaxe] at @e[type=item,tag=!in.checked,distance=..6,limit=1,sort=nearest] run function incendium:item/hefty_pickaxe/smash
execute if entity @s[scores={in.basalt=1..},predicate=incendium:holding/hefty_pickaxe] at @e[type=item,tag=!in.checked,distance=..6,limit=1,sort=nearest] run function incendium:item/hefty_pickaxe/smash
execute if entity @s[scores={in.blackstone=1..},predicate=incendium:holding/hefty_pickaxe] at @e[type=item,tag=!in.checked,distance=..6,limit=1,sort=nearest] run function incendium:item/hefty_pickaxe/smash

## scout's helm
execute if entity @s[predicate=incendium:wearing/scouts_battle_helm] run function incendium:item/scouts_battle_helm/main

## loaded spec. arrow
# firestorm
execute if entity @s[predicate=incendium:holding/firestorm] run function incendium:item/firestorm/holding

execute if entity @s[predicate=incendium:holding/loaded,predicate=!incendium:holding/loaded_spectral_arrow,predicate=incendium:holding/firestorm] run function incendium:item/firestorm/check_arrow

# holy wrath
execute if entity @s[predicate=incendium:holding/loaded,predicate=!incendium:holding/loaded_spectral_arrow,predicate=incendium:holding/holy_wrath] run function incendium:item/patron/holy_wrath/check_arrow

# sentrys wrath
execute if entity @s[predicate=incendium:holding/sentrys_wrath] run function incendium:item/sentrys_wrath/holding

# trailblazer
execute unless score @s in.wet matches -2147483647.. run scoreboard players set @s in.wet 0
execute if entity @s[tag=in.trailblazer_fix,scores={in.trailblazer=0},predicate=incendium:holding/trailblazer] run function incendium:item/trailblazer/fix
execute if entity @s[scores={in.wet=..0,in.use_bow=1..},predicate=incendium:holding/trailblazer] run function incendium:item/trailblazer/shot
execute if entity @s[scores={in.wet=..0,in.trailblazer=1..}, advancements={incendium:technical/using/trailblazer=false}] run function incendium:item/trailblazer/on_unload
execute if entity @s[scores={in.wet=..0},advancements={incendium:technical/using/trailblazer=true}] run function incendium:item/trailblazer/using
execute if entity @s[scores={in.wet=1..},advancements={incendium:technical/using/trailblazer=true}] run function incendium:item/trailblazer/using/while_wet

# ragnarok
execute if entity @s[tag=in.ragnarok_fix,scores={in.ragnarok=0},predicate=incendium:holding/ragnarok] run function incendium:item/ragnarok/fix
execute if entity @s[scores={in.use_bow=1..},predicate=incendium:holding/ragnarok] run function incendium:item/ragnarok/shot
execute if entity @s[scores={in.ragnarok=1..}, advancements={incendium:technical/using/ragnarok=false}] run function incendium:item/ragnarok/on_unload
execute if entity @s[advancements={incendium:technical/using/ragnarok=true}] run function incendium:item/ragnarok/using

# restless nature
execute if entity @s[predicate=incendium:holding/restless_nature,predicate=incendium:dimension/nether] run scoreboard players set @s in.restless_nature 5
execute if entity @s[scores={in.use_snowball=1..,in.restless_nature=1..}] run execute as @e[type=snowball,distance=..2,limit=1,sort=nearest] run function incendium:item/restless_nature/init
execute if entity @s[scores={in.restless_nature=1..}] run scoreboard players remove @s in.restless_nature 1
scoreboard players set @s in.use_snowball 0

# scroll of returning
execute if entity @s[scores={in.use_map=1..},tag=in.scroll] run function incendium:item/patron/scroll_of_returning/use

execute if entity @s[tag=in.mainhand_scroll,predicate=!incendium:holding/scroll_of_returning/mainhand] run tag @s remove in.mainhand_scroll
execute if entity @s[tag=!in.mainhand_scroll,predicate=incendium:holding/scroll_of_returning/mainhand] run tag @s add in.mainhand_scroll

execute if entity @s[tag=in.offhand_scroll,predicate=!incendium:holding/scroll_of_returning/offhand] run tag @s remove in.offhand_scroll
execute if entity @s[tag=!in.offhand_scroll,predicate=incendium:holding/scroll_of_returning/offhand] run tag @s add in.offhand_scroll

tag @s[tag=in.offhand_scroll] add in.scroll
tag @s[tag=in.mainhand_scroll] add in.scroll

tag @s[tag=!in.offhand_scroll,tag=!in.mainhand_scroll] remove in.scroll

# effect clearing
effect clear @s[scores={in.cd_prism=1..}] wither
effect clear @s[scores={in.cd_prism=1..}] poison

# decr scoreboards
scoreboard players remove @s[scores={in.cd_shield=1..}] in.cd_shield 1
scoreboard players remove @s[scores={in.cd_corrupt=1..}] in.cd_corrupt 1
scoreboard players remove @s[scores={in.cd_prism=1..}] in.cd_prism 1
scoreboard players remove @s[scores={in.cd_charm=1..}] in.cd_charm 1
scoreboard players remove @s[scores={in.cd_weapon=1..}] in.cd_weapon 1
scoreboard players remove @s[scores={in.cd_wrath=1..}] in.cd_wrath 1
scoreboard players remove @s[scores={in.immunity=1..}] in.immunity 1
scoreboard players remove @s[scores={in.wet=1..}] in.wet 1

scoreboard players operation @s in.old_health = @s in.health

# resets
scoreboard players set @s in.netherrack 0
scoreboard players set @s in.basalt 0
scoreboard players set @s in.blackstone 0
scoreboard players set @s in.prism 0
scoreboard players set @s in.use_map 0

scoreboard players set @s in.use_bow 0
scoreboard players set @s in.trident 0
