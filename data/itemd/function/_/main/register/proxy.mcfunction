#> itemd:_/register/proxy
#--------------------
# ./main AS [proxy item_display]
#--------------------
kill @s

data modify entity @s item set from storage itemd:_ data.register.item

# HOOK <> itemd
function #itemd:hook/itemd

data modify storage itemd:_ data.register.item set from entity @s item
