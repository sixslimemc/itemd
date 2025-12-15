#> itemd:_/main/inventory/trigger
#--------------------
# adv {!} inv_change
#--------------------

# guards:
execute if data storage itemd:config {creative_override:true} if entity @s[gamemode=creative] run return 0
execute unless data storage itemd:config register{in_inventory:true} run return 0

# inventory:
data modify storage itemd:_ t.inventory.registers set from entity @s Inventory

# specials:
data modify storage itemd:_ t.inventory.equipment set from entity @s equipment
data modify storage itemd:_ t.inventory.specials set value [{special_path:'armor.head'}, {special_path:'armor.chest'}, {special_path:'armor.legs'}, {special_path:'armor.feet'}, {special_path:'weapon.offhand'}]
data modify storage itemd:_ t.inventory.specials[].count set value -88
data modify storage itemd:_ t.inventory.specials[0] merge from storage itemd:_ t.inventory.equipment.head
data modify storage itemd:_ t.inventory.specials[1] merge from storage itemd:_ t.inventory.equipment.chest
data modify storage itemd:_ t.inventory.specials[2] merge from storage itemd:_ t.inventory.equipment.legs
data modify storage itemd:_ t.inventory.specials[3] merge from storage itemd:_ t.inventory.equipment.feet
data modify storage itemd:_ t.inventory.specials[4] merge from storage itemd:_ t.inventory.equipment.offhand
data remove storage itemd:_ t.inventory.specials[{count:-88}]
data modify storage itemd:_ t.inventory.registers append from storage itemd:_ t.inventory.specials[]

# filter:
data remove storage itemd:_ t.inventory.registers[{components:{"minecraft:custom_data":{itemd:{registered:true}}}}]
data remove storage itemd:_ t.inventory.registers[{components:{"minecraft:custom_data":{_:true}}}]

# each register:
execute if data storage itemd:_ t.inventory.registers[0] run function itemd:_/main/inventory/registers/each

data remove storage itemd:_ t.inventory