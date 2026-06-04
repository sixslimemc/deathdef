#> deathdef:_/main/death/populate_drops/final_items/each
#--------------------
# ./do
#--------------------

# add to {..vanish_check}:
data modify storage deathdef:_ t.death.vanish_check append from storage deathdef:_ t.death.items[-1].item
data modify storage deathdef:_ t.death.vanish_check[-1].components.'minecraft:custom_data'._deathdef.vanish.item_entry set from storage deathdef:_ t.death.items[-1]
execute store result storage deathdef:_ t.death.vanish_check[-1].Slot byte 1 run scoreboard players get *death.vanish_count _deathdef

# do vanish check if 15 items are in {..vanish_check}:
scoreboard players add *death.vanish_count _deathdef 1
execute if score *death.vanish_count _deathdef matches 15 run function deathdef:_/main/death/populate_drops/final_items/vanish_check/do

data remove storage deathdef:_ t.death.items[-1]
execute if data storage deathdef:_ t.death.items[0] run function deathdef:_/main/death/populate_drops/final_items/each