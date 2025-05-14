#> deathdef:_/death/equip_slots/each
#--------------------
# ../populate
#--------------------

data modify storage deathdef:_ var.death.this_equip set from storage deathdef:_ var.death.equip_slots[-1]

function deathdef:_/death/equip_slots/add_item with storage deathdef:_ var.death

data remove storage deathdef:_ var.death.equip_slots[-1]
execute if data storage deathdef:_ var.death.equip_slots[0] run function deathdef:_/death/equip_slots/each