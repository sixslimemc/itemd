#> itemd:_/tick
#--------------------
# @TICK
#--------------------
schedule function itemd:_/entity/tick 1t

execute as @e[type=item, tag=!_itemd.checked, tag=!_] at @s run function itemd:_/entity/main
