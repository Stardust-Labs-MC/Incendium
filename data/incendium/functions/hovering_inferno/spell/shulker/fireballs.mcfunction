# spawn fireballs

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.shulker.fireballs","fallback":"Shulker: Fireballs"}

function incendium:hovering_inferno/spell/kill/bullets
playsound minecraft:entity.wither.shoot player @a[distance=..50] ~ ~ ~ 5 0.3 1
particle minecraft:flame ~ ~ ~ 0 0 0 0.2 400 force

summon small_fireball ~ ~4 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[0.5,0.0,0.0],power:[0.0,0.0,-0.05]}
summon small_fireball ~ ~4 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[-0.5,0.0,0.0],power:[0.0,0.0,0.05]}
summon small_fireball ~ ~4 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[0.0,0.0,0.5],power:[0.05,0.0,0.0]}
summon small_fireball ~ ~4 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[0.0,0.0,-0.5],power:[-0.05,0.0,0.0]}

schedule function incendium:hovering_inferno/spell/kill/fireballs 25t
schedule function incendium:hovering_inferno/spell/kill/bullets 200t
