#> itemd:_/inventory/registers/each
#--------------------
# ./trigger
#--------------------

data modify storage itemd:_ var.inventory.give set from storage itemd:_ var.inventory.registers[-1]

# get {..give.a} {..give.b} --
data merge storage itemd:_ {var:{inventory:{give:{a:'', b:''}}}}
execute store result score *x _itemd run data get storage itemd:_ var.inventory.registers[-1].Slot

# standard slots:
execute if score *x _itemd matches 0..35 run data merge storage itemd:_ {var:{inventory:{give:{a:'container.'}}}}
execute if score *x _itemd matches 0..35 store result storage itemd:_ var.inventory.path.b int 1 run scoreboard players get *x _itemd

# armor:
execute if score *x _itemd matches 100..103 run data merge storage itemd:_ {var:{inventory:{give:{a:'armor.'}}}}
execute if score *x _itemd matches 100 run data merge storage itemd:_ {var:{inventory:{give:{b:'feet'}}}}
execute if score *x _itemd matches 101 run data merge storage itemd:_ {var:{inventory:{give:{b:'legs'}}}}
execute if score *x _itemd matches 102 run data merge storage itemd:_ {var:{inventory:{give:{b:'chest'}}}}
execute if score *x _itemd matches 103 run data merge storage itemd:_ {var:{inventory:{give:{b:'head'}}}}

execute if score *x _itemd matches -106 run data merge storage itemd:_ {var:{inventory:{give:{a:'weapon.', b:'offhand'}}}}
# --

# register:
data modify storage itemd:_ register.item set from storage itemd:_ var.inventory.registers[-1]
data remove storage itemd:_ register.item.Slot
function itemd:_/register/main

# give:
function itemd:_/inventory/registers/give with storage itemd:_ var.inventory.give

data remove storage itemd:_ var.inventory.registers[-1]
execute if data storage itemd:_ var.inventory.registers[0] run function itemd:_/inventory/registers/each