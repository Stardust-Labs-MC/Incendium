# Find the entity through a binary tree
#  $eid is the entity id we are looking for
#  once we build up all the bits, we can perform a score search

scoreboard players set $eid in.dummy 0

execute if entity @s[advancements={incendium:technical/on_hit={bit0=true}}] run scoreboard players add $eid in.dummy 1
execute if entity @s[advancements={incendium:technical/on_hit={bit1=true}}] run scoreboard players add $eid in.dummy 2
execute if entity @s[advancements={incendium:technical/on_hit={bit2=true}}] run scoreboard players add $eid in.dummy 4
execute if entity @s[advancements={incendium:technical/on_hit={bit3=true}}] run scoreboard players add $eid in.dummy 8
execute if entity @s[advancements={incendium:technical/on_hit={bit4=true}}] run scoreboard players add $eid in.dummy 16
execute if entity @s[advancements={incendium:technical/on_hit={bit5=true}}] run scoreboard players add $eid in.dummy 32
execute if entity @s[advancements={incendium:technical/on_hit={bit6=true}}] run scoreboard players add $eid in.dummy 64
execute if entity @s[advancements={incendium:technical/on_hit={bit7=true}}] run scoreboard players add $eid in.dummy 128
execute if entity @s[advancements={incendium:technical/on_hit={bit8=true}}] run scoreboard players add $eid in.dummy 256
execute if entity @s[advancements={incendium:technical/on_hit={bit9=true}}] run scoreboard players add $eid in.dummy 512
execute if entity @s[advancements={incendium:technical/on_hit={bit10=true}}] run scoreboard players add $eid in.dummy 1024
execute if entity @s[advancements={incendium:technical/on_hit={bit11=true}}] run scoreboard players add $eid in.dummy 2048
execute if entity @s[advancements={incendium:technical/on_hit={bit12=true}}] run scoreboard players add $eid in.dummy 4096
execute if entity @s[advancements={incendium:technical/on_hit={bit13=true}}] run scoreboard players add $eid in.dummy 8192
execute if entity @s[advancements={incendium:technical/on_hit={bit14=true}}] run scoreboard players add $eid in.dummy 16384

execute as @e[predicate=incendium:matching/eid] run function incendium:player/event/on_hit/entity
