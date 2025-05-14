#> deathdef:_/death/equip_slots/each
#--------------------
# ../populate AS [player]
#--------------------

$data modify storage deathdef:_ var.death.items append from entity @s equipment.'$(this_equip)'
data modify storage deathdef:_ var.death.items[-1].Slot set from storage deathdef:_ var.death.this_equip