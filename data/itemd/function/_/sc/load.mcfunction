#> itemd:_/sc/load
# @ LOAD

scoreboard objectives add _itemd dummy



# DEBUG
scoreboard players reset *init _itemd

execute unless score *init _itemd matches 1 run function itemd:_/sc/init