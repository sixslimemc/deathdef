#> deathdef:_/death/vanish_check/remove_item_string
#--------------------
# ./on_item
#--------------------

$data remove storage deathdef:hook pre_death.vanishing_items[{Slot:'$(vanish_slot)'}]
