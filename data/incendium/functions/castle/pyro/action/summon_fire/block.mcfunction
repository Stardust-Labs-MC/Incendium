summon falling_block ~ ~3 ~ {NoGravity:1b,Tags:["in.fire_block"],BlockState:{Name:"minecraft:fire"},Fire:100,Time:1,DropItem:0b}

execute positioned ~ ~3 ~ as @e[type=falling_block,tag=in.fire_block,tag=!in.checked,distance=..1,limit=1] run function incendium:castle/pyro/action/summon_fire/block_init

playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 2 0.85 0.5
