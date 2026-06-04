#> deathdef:_/main/death/populate_drops/final_items/vanish_check/remove_item_string
# [AS] non-vanished item
#--------------------
# ./on_item
#--------------------

$data remove storage deathdef:hook pre_call.vanishing_items[{slot:"$(slot)"}]