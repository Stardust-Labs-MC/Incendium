# from: ../summon
# loops at either 400t (normal hp, cheater), 320t (low hp), 120t (final)

tellraw @a[tag=in.admin] [{"translate": "%1$s%4733088$s","with":["Hovering Inferno",{"translate":"incendium.admin.menu.inferno"}],"color":"#ff4400"},{"text":": ","color":"#ff4400"},{"translate": "%1$s%4733088$s","with":["Spell Cast Debug",{"translate":"incendium.inferno.spell.debug"}]}]

scoreboard players set $spell_card in.inferno 0

execute if data storage incendium:main inferno{mode:'final'} if entity @a[tag=in.inferno_fight,tag=in.survival_player,predicate=incendium:holding/cheater] run data modify storage incendium:main inferno.mode set value 'cheater'

## different loops
# CHEATER
execute if data storage incendium:main inferno{mode:'cheater'} as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/inferno/loop/cheater

# NORMAL
execute if data storage incendium:main inferno{mode:'normal'} as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/inferno/loop/normal

# LOW HP
execute if data storage incendium:main inferno{mode:'low'} as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/inferno/loop/low

# FINAL STAGE (no loop)
execute if data storage incendium:main inferno{mode:'final'} as @e[type=blaze,tag=in.hovering_inferno,limit=1] at @s run function incendium:hovering_inferno/inferno/loop/final

# schedule looped by `inferno/loop/*`
