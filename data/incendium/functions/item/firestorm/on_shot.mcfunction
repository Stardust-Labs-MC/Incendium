# from (adv): technical/firestorm

tag @s add in.self

function incendium:misc/store_uuid

# keep rotation as @s: player
execute as @e[type=spectral_arrow,tag=!in.checked,distance=..5] positioned as @s run function incendium:item/firestorm/arrow

advancement revoke @s only incendium:technical/firestorm requirement
tag @s remove in.self
