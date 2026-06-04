#> deathdef:_/main/death/populate_drops/final_items/vanish_check/on_item
# [AS] non-vanished item
#--------------------
# ./proxy
#--------------------

data modify storage deathdef:_ t.death.item_entry set from entity @s Item.components."minecraft:custom_data"._deathdef.vanish.item_entry

# add to {hook -> pre_call.items}:
data modify storage deathdef:hook pre_call.items append from storage deathdef:_ t.death.item_entry

# remove from {hook -> pre_call.vanishing_items}:
execute if data storage deathdef:_ t.death.item_entry{is_equipment:true} run function deathdef:_/main/death/populate_drops/final_items/vanish_check/remove_item_string with storage deathdef:_ t.death.item_entry
execute if data storage deathdef:_ t.death.item_entry{is_equipment:false} run function deathdef:_/main/death/populate_drops/final_items/vanish_check/remove_item_byte with storage deathdef:_ t.death.item_entry
