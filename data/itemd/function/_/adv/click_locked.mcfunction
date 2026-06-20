#> itemd:_/adv/click_locked
#--------------------
# @advancement : _/click_locked
#--------------------

execute if data storage itemd:config {fix_locked_containers:true} run say CLICK
advancement revoke @s only itemd:_/click_locked