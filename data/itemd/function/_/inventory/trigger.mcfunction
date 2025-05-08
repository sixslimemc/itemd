#> itemd:_/inventory/trigger
#--------------------
# adv {!} inv_change
#--------------------

# guards:
execute if data storage itemd:config {creative_override:true} if entity @s[gamemode=creative] run return 0
execute unless data storage itemd:config register{in_inventory:true} run return 0

data modify storage itemd:_ var.inventory.registers set from entity @s Inventory
data remove storage itemd:_ var.inventory.registers[{components:{"minecraft:custom_data":{itemd:{registered:true}}}}]
data remove storage itemd:_ var.inventory.registers[{components:{"minecraft:custom_data":{__:true}}}]

execute if data storage itemd:_ var.inventory.registers[0] run function itemd:_/inventory/registers/each

data remove storage itemd:_ var.inventory