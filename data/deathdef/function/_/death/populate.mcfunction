#> deathdef:_/death/populate
#--------------------
# ./main
#--------------------

# init items:
data modify storage deathdef:_ var.death.items set from entity @s Inventory
data modify storage deathdef:hook pre_death.vanishing_items set from storage deathdef:_ var.death.items

# populate {@hook pre_death.items} and {@hook pre_death.vanishing_items}:
scoreboard players set *death.vanish_count _deathdef 0
execute if data storage deathdef:_ var.death.items[0] run function deathdef:_/death/items/each

# final vanish load:
execute if score *death.vanish_count _deathdef matches 1.. in varchunk:chunk positioned 8 18 8 summon llama run function deathdef:_/death/vanish_check/main

# xp:
execute store result storage deathdef:hook pre_death.xp int 1 run scoreboard players get @s _deathdef.xp

# clear:
clear @s
xp add @s -2147483648