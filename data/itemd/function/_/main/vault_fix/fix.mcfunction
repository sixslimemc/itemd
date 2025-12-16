#> itemd:_/main/vault_fix/fix
#--------------------
# ./find
#--------------------

execute if block ~ ~ ~ minecraft:vault unless data block ~ ~ ~ config.key_item.components."minecraft:custom_data"{_:true} run data modify block ~ ~ ~ config.key_item.components."minecraft:custom_data".itemd.registered set value true