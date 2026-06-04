#> deathdef:_/main/death/populate_drops/do
#--------------------
# ../trigger
#--------------------

# get items:
data modify storage deathdef:_ t.death.player.inventory set from entity @s Inventory
data modify storage deathdef:_ t.death.player.equipment set from entity @s equipment

# get xp:
function six:player/get_true_xp
data modify storage deathdef:_ t.death.player.xp set from storage six:out get_true_xp.result

data modify storage deathdef:_ t.death.items set value []

# populate {..items} with equipment:
data modify storage deathdef:_ t.death.equipment_slots set from storage deathdef:_ const.equipment_slots
execute if data storage deathdef:_ t.death.equipment_slots[0] run function deathdef:_/main/death/populate_drops/equipment_slots/each

# populate {..items} with inventory:
execute if data storage deathdef:_ t.death.player.inventory[0] run function deathdef:_/main/death/populate_drops/inventory/each

# populate {hook -> pre_call.items} & {hook -> pre_call.vanishing_items}:
data modify storage deathdef:hook pre_call.vanishing_items set from storage deathdef:_ t.death.items
function deathdef:_/main/death/populate_drops/final_items/do

function deathdef:_/main/death/populate_drops/clear with storage deathdef:_ t.death.player
