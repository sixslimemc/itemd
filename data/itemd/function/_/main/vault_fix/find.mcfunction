#> itemd:_/main/vault_fix/find
#--------------------
# ./proxy
#--------------------

function itemd:_/main/vault_fix/fix
execute positioned ~1 ~ ~ run function itemd:_/main/vault_fix/fix
execute positioned ~-1 ~ ~ run function itemd:_/main/vault_fix/fix
execute positioned ~ ~ ~1 run function itemd:_/main/vault_fix/fix
execute positioned ~ ~ ~-1 run function itemd:_/main/vault_fix/fix
execute positioned ~ ~1 ~ run function itemd:_/main/vault_fix/fix
execute positioned ~ ~-1 ~ run function itemd:_/main/vault_fix/fix

scoreboard players remove *vault.ray_distance _itemd 1
execute if score *vault.ray_distance _itemd matches 0.. positioned ^ ^ ^1 run function itemd:_/main/vault_fix/find