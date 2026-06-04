#> deathdef:_/main/death/populate_drops/inventory/each
#--------------------
# ../do
#--------------------

data modify storage deathdef:_ t.death.items append value {item:{}, slot:0b, is_equipment:false}
data modify storage deathdef:_ t.death.items[-1].item set from storage deathdef:_ t.death.player.inventory[-1]
data modify storage deathdef:_ t.death.items[-1].slot set from storage deathdef:_ t.death.items[-1].item.Slot
data remove storage deathdef:_ t.death.items[-1].item.Slot

data remove storage deathdef:_ t.death.player.inventory[-1]
execute if data storage deathdef:_ t.death.player.inventory[0] run function deathdef:_/main/death/populate_drops/inventory/each