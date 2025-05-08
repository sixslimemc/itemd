#> itemd:_/register/main
#--------------------
# _/inventory/registers/each
#--------------------

# PASS {register}
# <-> item: item

execute summon item_display run function itemd:_/register/proxy

data merge storage itemd:_ {register:{item:{components:{"minecraft:custom_data":{itemd:{registered:true}}}}}}