#> itemd:_/main/vault_fix/trigger
#--------------------
# adv {!} click_vault
#--------------------

scoreboard players set *vault.ray_distance _itemd 5
execute anchored eyes positioned ^ ^ ^ run function itemd:_/main/vault_fix/find

scoreboard players reset *vault.ray_distance _itemd