# from: player/main (called on throw)
# @s: player

tag @s add in.self

function incendium:misc/store_uuid

execute as @e[type=trident,tag=!in.checked,nbt={Trident:{tag:{incendium:{item:'voltaic_trident'}}}},distance=..4,sort=nearest] run function incendium:item/voltaic_trident/init

tag @s remove in.self
