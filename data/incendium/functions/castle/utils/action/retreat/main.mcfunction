# entity retreating
# @s: mob

scoreboard players operation $eid in.dummy = @s in.eid
execute unless entity @e[type=ender_pearl,limit=1,predicate=incendium:matching/eid] run function incendium:castle/utils/action/retreat/teleport
