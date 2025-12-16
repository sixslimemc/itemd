#> adv {!} click_vault

execute if data storage itemd:config {fix_vaults:true} run function itemd:_/main/inventory/trigger
advancement revoke @s only itemd:_/click_vault