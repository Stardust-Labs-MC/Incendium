# from: ./on_shot
# @s: firestorm arrow

tag @p[tag=in.self,distance=..5] add laser
function incendium:item/firestorm/ray/start

tag @a remove laser

kill @s
