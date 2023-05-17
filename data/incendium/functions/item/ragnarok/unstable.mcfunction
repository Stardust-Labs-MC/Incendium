# from ./using
# @s: holding raganrok too long

scoreboard players operation $random in.dummy = @s in.ragnarok
scoreboard players operation $random in.dummy -= #250 in.constants
execute if predicate incendium:weather/thunder run scoreboard players operation $random in.dummy *= #2 in.constants

scoreboard players operation $random in.dummy < #75 in.constants

execute if predicate incendium:random/other/x if predicate incendium:random/other/x if predicate incendium:random/10 run summon lightning_bolt

title @s[predicate=!incendium:weather/thunder] actionbar [{"translate": "%1$s%4733088$s","with":["Ragnarok",{"translate":"incendium.item.ragnarok.name"}], "color": "#CCEBDB", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["is becoming unstable the longer you hold it's power within",{"translate":"incendium.item.ragnarok.system.unstable"}], "color":"#ABC4B8", "bold": false}]

title @s[predicate=incendium:weather/thunder] actionbar [{"translate": "%1$s%4733088$s","with":["Ragnarok",{"translate":"incendium.item.ragnarok.name"}], "color": "#CCEBDB", "bold": true}, " ", {"translate": "%1$s%4733088$s","with":["is becoming more unstable during the storm",{"translate":"incendium.item.ragnarok.system.storm"}], "color":"#ABC4B8", "bold": false}]
