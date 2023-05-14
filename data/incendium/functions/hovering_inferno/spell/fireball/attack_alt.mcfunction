# attack :D

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.fireball.alt","fallback":"Fireball: Alt"}

function incendium:hovering_inferno/spell/kill/bullets
playsound minecraft:entity.illusioner.cast_spell player @a[distance=..40] ~ ~ ~ 2 0.9 1

data merge entity @s {Invulnerable:1b}
summon minecraft:fireball ~0.5 ~1 ~1 {Motion:[0.5,-0.2,1.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~-0.5 ~1 ~1 {Motion:[-0.5,-0.2,1.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~1 ~1 ~-0.5 {Motion:[1.0,-0.2,-0.5],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~-1 ~1 ~-0.5 {Motion:[-1.0,-0.2,-0.5],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~-0.5 ~1 ~-1 {Motion:[-0.5,-0.2,-1.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~0.5 ~1 ~-1.0 {Motion:[0.5,-0.2,-1.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~1.0 ~1 ~0.5 {Motion:[1.0,-0.2,0.5],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~-1.0 ~1 ~0.5 {Motion:[-1.0,-0.2,0.5],power:[0.0,-0.01,0.0]}
data merge entity @s {Invulnerable:0b}