#> itemd:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _itemd dummy

# first init:
execute if score *installed _itemd matches 1 run return 1

data merge storage itemd:config {creative_override:true, register:{in_inventory:true, item_entities:true}}
