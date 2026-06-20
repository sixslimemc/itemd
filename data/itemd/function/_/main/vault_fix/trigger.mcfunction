#> itemd:_/main/vault_fix/trigger
#--------------------
# _/adv/click_vault
#--------------------

execute store result score *vault.ray_distance _itemd run attribute @s block_interaction_range get
scoreboard players add *vault.ray_distance _itemd 1
execute anchored eyes positioned ^ ^ ^ run function itemd:_/main/vault_fix/find

scoreboard players reset *vault.ray_distance _itemd