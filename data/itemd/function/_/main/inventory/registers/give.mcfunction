#> itemd:_/inventory/registers/give
#--------------------
# ./each
#--------------------

$item replace entity @s $(a)$(b) with air
$loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_count",count:$(count)},{function:"minecraft:set_components", components:$(components)}]}]}]}
