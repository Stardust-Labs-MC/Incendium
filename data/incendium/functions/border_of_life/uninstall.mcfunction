tag @e remove nbs_borderofli
scoreboard objectives remove nbs_borderofli
scoreboard objectives remove nbs_borderofli_t
datapack disable "file/border_of_life.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true},{"text":"border_of_life.zip","color":"gold","underlined":true}," ",{"translate":"incendium.system.nbs.uninstall","fallback":"has uninstalled successfully. You may now remove it from your datapack folder.","color":"yellow"}]