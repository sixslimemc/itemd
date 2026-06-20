#> itemd:_/main/entity/main
#--------------------
# ./tick AS [item]
#--------------------

tag @s add _itemd.checked

data modify storage itemd:_ data.register.item set from entity @s Item
execute if data storage itemd:_ data.register.item.components.'minecraft:custom_data'{__:true} run return 0
execute if data storage itemd:_ data.register.item.components.'minecraft:custom_data'.itemd{registered:true} run return 0

data modify storage itemd:_ data.register.source_type set value 1
function itemd:_/main/register/main
data modify entity @s Item set from storage itemd:_ data.register.item