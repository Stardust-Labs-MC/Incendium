# summons arrows

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.shulker.arrows","fallback":"Shulker: Arrows"}

playsound minecraft:entity.wither.shoot player @a[distance=..50] ~ ~ ~ 5 0.5 1
particle minecraft:flame ~ ~ ~ 0 0 0 0.4 300 force

summon arrow ~ ~1 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[0.5,-0.1,0.0],NoGravity:1,PierceLevel:1000}
summon arrow ~ ~1 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[-0.5,-0.1,0.0],NoGravity:1,PierceLevel:1000}
summon arrow ~ ~1 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[0.0,-0.1,0.5],NoGravity:1,PierceLevel:1000}
summon arrow ~ ~1 ~ {Tags:["in.inferno_entity", "in.shulker"],Motion:[0.0,-0.1,-0.5],NoGravity:1,PierceLevel:1000}
