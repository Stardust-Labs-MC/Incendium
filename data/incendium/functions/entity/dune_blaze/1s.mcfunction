# from: clocks/1s
# @s: dune_blaze

#> Logic:
#>  - unless you are blinded
#>     - if there is a nearby player who can blind u
#>        - blind self 
#>  - if you are blinded
#>     - if there is no nearby player who can blind u
#>        - unblind self
execute unless entity @s[tag=in.blinded] if entity @a[distance=..25,predicate=incendium:holding/torch_of_lunacy] run function incendium:entity/dune_blaze/blind
execute if entity @s[tag=in.blinded] unless entity @a[distance=..25,predicate=incendium:holding/torch_of_lunacy] run function incendium:entity/dune_blaze/unblind
