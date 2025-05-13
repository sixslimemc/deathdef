#> deathdef:_/death/items/each
#--------------------
# ../populate
#--------------------

# set vanish item:
data modify storage deathdef:_ var.death.vanish_check append from storage deathdef:_ var.death.items[-1]
data modify storage deathdef:_ var.death.vanish_check[-1].components.'minecraft:custom_data'.deathdef.vanish_slot set from storage deathdef:_ var.death.items[-1].Slot
execute store result storage deathdef:_ var.death.vanish_check[-1].Slot byte 1 run scoreboard players get *death.vanish_count _deathdef

# vanish check if == 15 items:
scoreboard players add *death.vanish_count _deathdef 1
execute if score *death.vanish_count _deathdef matches 15 in varchunk:chunk positioned 1 1 1 summon llama run function deathdef:_/death/vanish_check/main

data remove storage deathdef:_ var.death.items[-1]
execute if data storage deathdef:_ var.death.items[0] run function deathdef:_/death/items/each