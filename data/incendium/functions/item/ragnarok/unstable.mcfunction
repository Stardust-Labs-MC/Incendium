# from ./using
# @s: holding raganrok too long

scoreboard players operation $random in.dummy = @s in.ragnarok
scoreboard players operation $random in.dummy -= #250 in.constants
execute if predicate incendium:weather/thunder run scoreboard players operation $random in.dummy *= #2 in.constants

scoreboard players operation $random in.dummy < #75 in.constants

execute if predicate incendium:random/other/x if predicate incendium:random/other/x if predicate incendium:random/10 run summon lightning_bolt

title @s[predicate=!incendium:weather/thunder] actionbar [{"translate": "Ragnarok", "color": "#CCEBDB", "bold": true}, " ", {"translate": "is becoming unstable the longer you hold it's power within", "color":"#ABC4B8", "bold": false}]

title @s[predicate=incendium:weather/thunder] actionbar [{"translate": "Ragnarok", "color": "#CCEBDB", "bold": true}, " ", {"translate": "is becoming more unstable during the storm", "color":"#ABC4B8", "bold": false}]
