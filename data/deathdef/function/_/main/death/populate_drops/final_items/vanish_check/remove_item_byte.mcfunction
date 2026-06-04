#> deathdef:_/main/death/populate_drops/final_items/vanish_check/remove_item_byte
# [AS] non-vanished item
#--------------------
# ./on_item
#--------------------

$say $(slot)
$data remove storage deathdef:hook pre_call.vanishing_items[{slot:$(slot)b}]