#> itemd:_/main/inventory/registers/each
#--------------------
# ../trigger
#--------------------

# get {..give.a} {..give.b} --
data modify storage itemd:_ t.inventory.give set value {a:'', b:''}

execute store success score *x _itemd if data storage itemd:_ t.inventory.registers[-1].special_path

# standard slots:
execute if score *x _itemd matches 0 run data merge storage itemd:_ {t:{inventory:{give:{a:'container.'}}}}
execute if score *x _itemd matches 0 store result storage itemd:_ t.inventory.give.b int 1 run data get storage itemd:_ t.inventory.registers[-1].Slot

# special slots:
execute if score *x _itemd matches 1 run data modify storage itemd:_ t.inventory.give.a set from storage itemd:_ t.inventory.registers[-1].special_path

# register:
data modify storage itemd:_ data.register.item set from storage itemd:_ t.inventory.registers[-1]
execute if score *x _itemd matches 0 run data remove storage itemd:_ data.register.item.Slot
execute if score *x _itemd matches 1 run data remove storage itemd:_ data.register.item.special_path
function itemd:_/main/register/main
data modify storage itemd:_ t.inventory.give merge from storage itemd:_ data.register.item

# give:
function itemd:_/main/inventory/registers/give with storage itemd:_ t.inventory.give

data remove storage itemd:_ t.inventory.registers[-1]
execute if data storage itemd:_ t.inventory.registers[0] run function itemd:_/main/inventory/registers/each