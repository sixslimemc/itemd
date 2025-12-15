#> itemd:_/main/entity/tick
#--------------------
# _/entrypoints/item_check
#--------------------
schedule function itemd:_/main/entity/tick 1t

execute as @e[type=item, tag=!_itemd.checked, tag=!-, tag=!_] at @s run function itemd:_/main/entity/main
