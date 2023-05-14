# shoot bullet

execute store result storage incendium:temp bullet.Steps int 1 run scoreboard players get %shulker.steps in.constants

data modify storage incendium:temp bullet.Owner set from storage incendium:main inferno.UUID
data modify storage incendium:temp bullet.Target set from entity @a[tag=in.inferno_fight,sort=nearest,limit=1] UUID

summon minecraft:shulker_bullet ~ ~ ~ {Silent:1b, Tags: ["in.shulker"], TXD: 0.0d, TYD: 0.0d, TZD: 0.0d}

execute as @e[type=shulker_bullet,tag=in.shulker,tag=!in.checked] run function incendium:hovering_inferno/spell/shulker/init
