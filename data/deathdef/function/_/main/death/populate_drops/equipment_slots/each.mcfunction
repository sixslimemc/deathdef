#> deathdef:_/main/death/populate_drops/equipment_slots/each
#--------------------
# ../do
#--------------------

data modify storage deathdef:_ t.death.this_slot set from storage deathdef:_ t.death.equipment_slots[-1]

function deathdef:_/main/death/populate_drops/equipment_slots/try_add with storage deathdef:_ t.death

data remove storage deathdef:_ t.death.equipment_slots[-1]
execute if data storage deathdef:_ t.death.equipment_slots[0] run function deathdef:_/main/death/populate_drops/equipment_slots/each