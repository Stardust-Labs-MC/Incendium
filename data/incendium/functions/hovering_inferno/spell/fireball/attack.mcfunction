# attack :D

tellraw @a[tag=in.admin] {"translate": "%1$s%4733088$s","with":["Fireball: Normal",{"translate":"incendium.inferno.spell.fireball.normal"}]}

function incendium:hovering_inferno/spell/kill/bullets
playsound minecraft:entity.illusioner.cast_spell player @a[distance=..40] ~ ~ ~ 2 0.9 1

data merge entity @s {Invulnerable:1b}
summon minecraft:fireball ~1 ~1 ~ {Motion:[1.0,-0.2,0.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~-1 ~1 ~ {Motion:[-1.0,-0.2,0.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~ ~1 ~1 {Motion:[0.0,-0.2,1.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~ ~1 ~-1 {Motion:[0.0,-0.2,-1.0],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~1 ~1 ~1 {Motion:[0.71,-0.2,0.71],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~-1 ~1 ~1 {Motion:[-0.71,-0.2,0.71],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~1 ~1 ~-1 {Motion:[0.71,-0.2,-0.71],power:[0.0,-0.01,0.0]}
summon minecraft:fireball ~-1 ~1 ~-1 {Motion:[-0.71,-0.2,-0.71],power:[0.0,-0.01,0.0]}
data merge entity @s {Invulnerable:0b}
