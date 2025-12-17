#> itemd:_/entrypoints/entity_check
# ENTRYPOINT: entity_check

schedule clear itemd:_/main/entity/tick
execute if data storage itemd:config register{item_entities:true} run function itemd:_/main/entity/tick
