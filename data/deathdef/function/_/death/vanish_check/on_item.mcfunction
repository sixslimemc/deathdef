#> deathdef:_/death/vanish_check/on_item
#--------------------
# ./main AS [vanish survived item]
#--------------------

data modify storage deathdef:_ var.death.vanish_slot set from entity @s Item.components.'minecraft:custom_data'.deathdef.vanish_slot
function deathdef:_/death/vanish_check/remove_item_byte with storage deathdef:_ var.death
function deathdef:_/death/vanish_check/remove_item_string with storage deathdef:_ var.death

data modify storage deathdef:hook pre_death.items append from entity @s Item
data modify storage deathdef:hook pre_death.items[-1].Slot set from storage deathdef:hook pre_death.items[-1].components.'minecraft:custom_data'.deathdef.vanish_slot
data remove storage deathdef:hook pre_death.items[-1].components.'minecraft:custom_data'.deathdef

kill @s