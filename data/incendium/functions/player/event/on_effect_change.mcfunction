# from (adv): technical/invis_effect_change
#> handles in.invis tag state

tag @s remove in.invis
tag @s[predicate=incendium:effects/invisibility] add in.invis

advancement revoke @s only incendium:technical/on_effect_change requirement
