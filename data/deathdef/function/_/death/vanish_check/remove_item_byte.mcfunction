#> deathdef:_/death/vanish_check/remove_item_byte
#--------------------
# ./on_item
#--------------------

$data remove storage deathdef:hook pre_death.vanishing_items[{Slot:$(vanish_slot)b}]
