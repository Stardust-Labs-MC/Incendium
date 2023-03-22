# incendium:load
# from - #load:load

scoreboard players set incendium load.status 1

#> This will init all objs and related scores
#>  Also will boot all main tick loops
scoreboard objectives add in.dummy dummy
scoreboard objectives add in.state dummy
scoreboard objectives add in.constants dummy
scoreboard objectives add in.version dummy

scoreboard players set #1000 in.constants 1000
scoreboard players set #250 in.constants 250
scoreboard players set #100 in.constants 100
scoreboard players set #75 in.constants 75
scoreboard players set #40 in.constants 40
scoreboard players set #25 in.constants 25
scoreboard players set #20 in.constants 20
scoreboard players set #15 in.constants 15
scoreboard players set #10 in.constants 10
scoreboard players set #5 in.constants 5
scoreboard players set #4 in.constants 4
scoreboard players set #3 in.constants 3
scoreboard players set #2 in.constants 2
scoreboard players set #-1 in.constants -1

# spells?
scoreboard objectives add in.aec_rotation dummy
scoreboard objectives add in.laser_time dummy
scoreboard objectives add in.fire_laser dummy
scoreboard objectives add in.spell dummy
scoreboard objectives add in.spell_cd dummy

scoreboard objectives add in.wet dummy
scoreboard objectives add in.frozen dummy
scoreboard objectives add in.shielding dummy
scoreboard objectives add in.use_map minecraft.used:minecraft.map
scoreboard objectives add in.use_snowball minecraft.used:minecraft.snowball
scoreboard objectives add in.restless_nature dummy
scoreboard objectives add in.scouts_helmet dummy

scoreboard objectives add in.castle_id dummy
scoreboard objectives add in.retreating dummy

scoreboard objectives add in.cd_shield dummy
scoreboard objectives add in.cd_prism dummy
scoreboard objectives add in.cd_charm dummy
scoreboard objectives add in.cd_corrupt dummy
scoreboard objectives add in.cur_spell dummy
scoreboard objectives add in.cd_weapon dummy
scoreboard objectives add in.cd_wrath dummy

# hovering_inferno
scoreboard objectives add in.inferno dummy

# health
scoreboard objectives add in.health health
scoreboard objectives add in.old_health dummy

# mining
scoreboard objectives add in.mine_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add in.netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add in.basalt minecraft.mined:minecraft.basalt
scoreboard objectives add in.blackstone minecraft.mined:minecraft.blackstone

# use
scoreboard objectives remove in.book_spell
scoreboard objectives add in.book_spell minecraft.used:minecraft.knowledge_book
scoreboard objectives add in.use_bow minecraft.used:minecraft.bow
scoreboard objectives add in.trailblazer dummy
scoreboard objectives add in.ragnarok dummy

scoreboard objectives add in.trident minecraft.used:minecraft.trident
scoreboard objectives add in.trident_id dummy
scoreboard players set $latest.id in.trident_id 0

# spawncap
scoreboard objectives add in.spirit_count dummy
scoreboard objectives add in.toxic_count dummy
scoreboard objectives add in.lifetime dummy

# scroll of returning
summon marker ~ ~ ~ {Tags:["in.world_spawn"]}

# we keep this separate incase u want to update the song, etc
function incendium:border_of_life/load

# castle
scoreboard objectives add in.timer dummy
execute unless score $castle.tick in.state = $castle.tick in.state run scoreboard players set $castle.tick in.state 0
execute unless score $castle.AI in.state = $castle.AI in.state run scoreboard players set $castle.AI in.state 1

# teams
team add in.castle
team modify in.castle nametagVisibility never
team modify in.castle color dark_red
team modify in.castle friendlyFire false

team add in.sanctum
team modify in.sanctum nametagVisibility never
team modify in.sanctum color aqua
team modify in.sanctum friendlyFire false

team add in.noname
team modify in.noname nametagVisibility never
team modify in.noname color yellow

scoreboard players set %shulker.steps in.constants 30
scoreboard players set $sentry_lives in.dummy 0
scoreboard objectives add in.sentry_totems dummy

# gamerules
execute store result score %mob.griefing in.constants run gamerule mobGriefing

# technical load
function incendium:technical/load

# boot tick loops
schedule function incendium:clocks/main 1t replace
schedule function incendium:clocks/2t 2t replace
schedule function incendium:clocks/1s 1s replace
schedule function incendium:clocks/7s 7s replace
schedule function incendium:clocks/1m 60s replace

# load msg here
execute unless score $load.message in.constants matches 1 run schedule function incendium:clocks/wait_for_player 2s replace

# this clock is offset by 5t
#  advancement checks are done every 1s
#  the offset smooths it out on the tick cycle
schedule function incendium:player/advancements/1s 5t replace
