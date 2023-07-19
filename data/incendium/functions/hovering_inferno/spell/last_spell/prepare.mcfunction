# from: ../inferno/main
# @s: inferno

tellraw @a[tag=in.admin] {"translate":"incendium.inferno.spell.last.prepare","fallback":"Last: Prepare"}

function incendium:hovering_inferno/spell/clear_all

scoreboard players set $spell_card in.inferno 47
data modify storage incendium:main inferno.mode set value 'final'
data merge entity @s {Invulnerable:1b,NoAI:1b,Health:100.0f}
effect give @s invisibility 8 0
effect give @s resistance 80000 100
advancement grant @a[distance=..50,tag=in.survival_player] only incendium:infernal_dunes/inferno/run
tp @e[type=marker,tag=in.altar,sort=nearest,distance=..50,limit=1]

kill @e[type=shulker_bullet,tag=in.shulker,tag=!in.last_bullet]
forceload add ~ ~

scoreboard players set $last.timer in.inferno 1580
bossbar set incendium:inferno max 1580

schedule function incendium:hovering_inferno/loop 120t replace
