# IMPL > deathdef : util/get_macro_slot
# main

execute store success score *x _deathdef if data storage deathdef:in get_macro_slot.item{is_equipment:true}

execute if score *x _deathdef matches 1 run return run function deathdef:_/impl/util/get_macro_slot/equipment with storage deathdef:in get_macro_slot.item
execute if score *x _deathdef matches 0 run return run function deathdef:_/impl/util/get_macro_slot/inventory with storage deathdef:in get_macro_slot.item