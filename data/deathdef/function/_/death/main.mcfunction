#> deathdef:_/death/main
#--------------------
# _/tick
#- AS [player]
#- AT [death location]
#--------------------

data merge storage deathdef:hook {pre_death:{items:[], vanishing_items:[], xp:0}}

execute unless data storage deathdef:config {keep_inventory:true} run function deathdef:_/death/populate

# HOOK <> pre_death:
function #deathdef:hook/pre_death

# ABSTRACT <*> death:
data modify storage deathdef:abstract/in death set from storage deathdef:hook pre_death
function #deathdef:abstract/death
data remove storage deathdef:abstract/in death

# HOOK <> post_death:
data modify storage deathdef:hook post_death set from storage deathdef:hook pre_death
function #deathdef:hook/post_death

scoreboard players reset @s _deathdef.death
data remove storage deathdef:_ var.death