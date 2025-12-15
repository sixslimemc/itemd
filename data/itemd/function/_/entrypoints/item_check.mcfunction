#> itemd:_/entrypoints/disable
# ENTRYPOINT: tick

schedule clear itemd:_/main/entity/tick
execute if data storage itemd:config register{item_entities:true} run function itemd:_/main/entity/tick
