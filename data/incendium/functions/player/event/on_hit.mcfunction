# from (adv): technical/on_hit
tag @s add in.self

tag @s[advancements={incendium:technical/on_hit={direct=true}}] add in.direct

execute if entity @s[tag=in.direct, predicate=incendium:holding/scarlet_dagger, predicate=incendium:random/3_5,scores={in.cd_weapon=..0}] run function incendium:item/scarlet_dagger/on_hit
function incendium:player/event/on_hit_or_kill

# We do this so we can transfer conditions:
#  player -> entity
#  otherwise, we'd have to do something like:
#  	@p[tag=in.self,predicate=blazing_hatchet]
scoreboard players reset $wep in.dummy
scoreboard players add @s in.cd_weapon 0

# score to wep
#   1: chilling_blade
execute if entity @s[tag=in.direct, predicate=incendium:holding/chilling_blade, scores={in.cd_weapon=..0}] run scoreboard players set $wep in.dummy 1
execute if entity @s[tag=in.direct, predicate=incendium:holding/withersbane, scores={in.cd_weapon=..0}] run scoreboard players set $wep in.dummy 2
execute if entity @s[tag=in.direct, predicate=incendium:holding/warping_witherblade, scores={in.cd_weapon=..0}] run scoreboard players set $wep in.dummy 3
execute if entity @s[advancements={incendium:technical/on_hit={trailblazer=true}}] run scoreboard players set $wep in.dummy 4
execute if entity @s[tag=in.direct, predicate=incendium:holding/cake_batter] run scoreboard players set $wep in.dummy 5
# default cooldown
# scoreboard players set @s in.cd_weapon 20

execute if entity @s[advancements={incendium:technical/on_hit={target=true}}] run function incendium:player/event/on_hit/find_entity

tag @s remove in.direct
tag @s remove in.self
advancement revoke @s only incendium:technical/on_hit
