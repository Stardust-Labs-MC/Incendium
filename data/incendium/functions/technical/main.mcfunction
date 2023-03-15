execute store result score $toggle in.constants if score $toggle in.constants matches 0

# pipeline sentry "lives" particles
scoreboard players add $sentry_lives in.dummy 1
execute if score $sentry_lives in.dummy matches 89.. run scoreboard players set $sentry_lives in.dummy -90