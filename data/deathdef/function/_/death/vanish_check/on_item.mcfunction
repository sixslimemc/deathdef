#> deathdef:_/death/vanish_check/on_item
#--------------------
# ./main AS [vanish survived item]
#--------------------

$data remove storage deathdef:hook pre_death.vanishing_items[{Slot:$(vanish_slot)b}]

data modify storage deathdef:hook pre_death.items append from entity @s Item
data modify storage deathdef:hook pre_death.items[-1].Slot set from storage deathdef:hook pre_death.items[-1].components.'minecraft:custom_data'.deathdef.vanish_slot
data remove storage deathdef:hook pre_death.items[-1].components.'minecraft:custom_data'.deathdef

kill @s