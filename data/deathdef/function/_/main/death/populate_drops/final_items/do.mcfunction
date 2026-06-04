#> deathdef:_/main/death/populate_drops/final_items/do
#--------------------
# ../do
#--------------------

scoreboard players set *death.vanish_count _deathdef 0
data modify storage deathdef:_ t.death.vanish_check set value []

# each:
execute if data storage deathdef:_ t.death.items[0] run function deathdef:_/main/death/populate_drops/final_items/each

# final vanish load:
execute if score *death.vanish_count _deathdef matches 1.. run function deathdef:_/main/death/populate_drops/final_items/vanish_check/do

scoreboard players reset *death.vanish_count