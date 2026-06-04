#> deathdef:_/main/death/trigger
#--------------------
# _/subscriber/idied/death
#--------------------

execute if score *ignore_spectators _deathdef matches 1 if entity @s[gamemode=spectator] run return 0

data modify storage deathdef:hook pre_call set value {items:[], vanishing_items:[], xp:0}

# populate drops:
execute unless data storage deathdef:config {keep_inventory:true} run function deathdef:_/main/death/populate_drops

# ignore strict private items:
data remove storage deathdef:hook pre_call.items[{item:{components:{"minecraft:custom_data":{__:true}}}}]
data remove storage deathdef:hook pre_call.vanishing_items[{item:{components:{"minecraft:custom_data":{__:true}}}}]

data remove storage deathdef:_ t.death