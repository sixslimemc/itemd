#> itemd:_/main/register/main
#--------------------
# _/inventory/registers/each
# _/entity/main
#--------------------

execute summon item_display run function itemd:_/main/register/proxy

data modify storage itemd:_ data.register.item.components."minecraft:custom_data".itemd.registered set value true