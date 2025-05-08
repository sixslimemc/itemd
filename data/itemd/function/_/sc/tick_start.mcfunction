#> itemd:_/sc/tick
#--------------------
# ENTRYPOINT :: TICK
#--------------------

schedule clear itemd:_/entity/tick
execute if data storage itemd:config register{item_entities:true} run function itemd:_/entity/tick
