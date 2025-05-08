#> itemd:_/entity/main
#--------------------
# _/tick AS [item]
#--------------------

tag @s add _itemd.checked

data modify storage itemd:_ register.item set from entity @s Item
execute if data storage itemd:_ register.item.components.'minecraft:custom_data'{__:true} run return 0
execute if data storage itemd:_ register.item.components.'minecraft:custom_data'.itemd{registered:true} run return 0

function itemd:_/register/main
data modify entity @s Item set from storage itemd:_ register.item