#> itemd:_/adv/click_vault
#--------------------
# @advancement : _/click_vault
#--------------------

execute if data storage itemd:config {fix_vaults:true} run function itemd:_/main/vault_fix/trigger
advancement revoke @s only itemd:_/click_vault