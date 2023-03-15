# Called by hit matching system
#  Event: on hit
#  @s: entity

# make sure we only run the hit detect if the cooldown is up
execute if score $wep in.dummy matches 1 at @s run function incendium:item/chilling_blade/on_hit
execute if score $wep in.dummy matches 2 at @s run function incendium:item/withersbane/on_hit
execute if score $wep in.dummy matches 3 at @s run function incendium:item/warping_witherblade/on_hit
execute if score $wep in.dummy matches 4 at @s run function incendium:item/trailblazer/on_hit
execute if score $wep in.dummy matches 5 at @s run function incendium:item/cake_batter/on_hit
