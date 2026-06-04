#> deathdef:_/main/death/trigger
#--------------------
# _/subscriber/idied/death
#--------------------

execute if score *ignore_spectators _deathdef matches 1 if entity @s[gamemode=spectator] run return 0

data modify storage deathdef:hook pre_call set value {items:[], vanishing_items:[], xp:0}

# populate drops:
execute unless data storage deathdef:config {keep_inventory:true} run function deathdef:_/main/death/populate_drops/do

# ignore strict private items:
data remove storage deathdef:hook pre_call.items[{item:{components:{"minecraft:custom_data":{__:true}}}}]
data remove storage deathdef:hook pre_call.vanishing_items[{item:{components:{"minecraft:custom_data":{__:true}}}}]

# HOOK: pre_call
function #deathdef:hook/pre_call

# ABSTRACT: death
data modify storage deathdef:abstract/in death set from storage deathdef:hook pre_call
function #deathdef:abstract/death
data remove storage deathdef:abstract/in death

# HOOK: post_call
data modify storage deathdef:hook post_call set from storage deathdef:hook pre_call
function #deathdef:hook/post_call

data remove storage deathdef:hook pre_call
data remove storage deathdef:hook post_call
data remove storage deathdef:_ t.death