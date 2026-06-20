#> itemd:_/main/vault_fix/fix
#--------------------
# ./find
#--------------------

# block checks:
execute unless block ~ ~ ~ minecraft:vault run return 0
execute if data block ~ ~ ~ config.key_item.components."minecraft:custom_data"{_:true} run return 0
execute if data block ~ ~ ~ config.key_item.components."minecraft:custom_data".itemd{registered:true} run return 0

data remove storage itemd:_ data.register.item
data modify storage itemd:_ data.register.item set from block ~ ~ ~ config.key_item
data modify storage itemd:_ data.register.source_type set value 2
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function itemd:_/main/register/main

data modify block ~ ~ ~ config.key_item set from storage itemd:_ data.register.item

scoreboard players set *vault.ray_distance _itemd 0