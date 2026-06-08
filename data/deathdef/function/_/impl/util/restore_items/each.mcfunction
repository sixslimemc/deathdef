# IMPL > deathdef : util/restore_items
# each
#--------------------
# ./main
#--------------------

data modify storage deathdef:_ v.restore_items.this_item set from storage deathdef:in restore_items.items[-1]

data modify storage deathdef:in get_macro_slot.item set from storage deathdef:_ v.restore_items.this_item
function deathdef:util/get_macro_slot
data modify storage deathdef:_ v.restore_items.slot set from storage deathdef:out get_macro_slot.result

data modify entity @s item set from storage deathdef:_ v.restore_items.this_item.item

function deathdef:_/impl/util/restore_items/replace with storage deathdef:_ v.restore_items

data remove storage deathdef:in restore_items.items[-1]
execute if data storage deathdef:in restore_items.items[0] run function deathdef:_/impl/util/restore_items/each

