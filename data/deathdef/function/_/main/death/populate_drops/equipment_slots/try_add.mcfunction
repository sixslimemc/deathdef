#> deathdef:_/main/death/populate_drops/equipment_slots/try_add
#--------------------
# ./each
#--------------------

data modify storage deathdef:_ x.entry set value {slot:"", is_equipment:true}
$data modify storage deathdef:_ x.entry.item set from storage deathdef:_ t.death.player.equipment.'$(this_slot)'
execute unless data storage deathdef:_ x.entry.item run return 0

data modify storage deathdef:_ x.entry.slot set from storage deathdef:_ t.death.this_slot
data modify storage deathdef:_ t.death.items append from storage deathdef:_ x.entry