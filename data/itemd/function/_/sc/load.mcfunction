#> itemd:_/sc/load
# @ LOAD

scoreboard objectives add _itemd dummy

execute unless score *init _itemd matches 1 run function itemd:_/sc/init