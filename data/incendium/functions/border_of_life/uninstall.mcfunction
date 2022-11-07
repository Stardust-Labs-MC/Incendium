tag @e remove nbs_borderofli
scoreboard objectives remove nbs_borderofli
scoreboard objectives remove nbs_borderofli_t
datapack disable "file/border_of_life.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":true},{"text":"Data pack ","color":"yellow"},{"text":"border_of_life.zip","color":"gold","underlined":true},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]