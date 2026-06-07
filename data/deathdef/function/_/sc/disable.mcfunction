#> deathdef:_/sc/disable
# @ DISABLE

# TODO

tellraw @a [{color:red, text:"[!!!] Disable for 'deathdef' has not yet been implemented!"}]

scoreboard players set *disabled _deathdef 1

execute if data storage deathdef:config {keep_inventory:true} run gamerule keep_inventory true
execute unless data storage deathdef:config {keep_inventory:true} run gamerule keep_inventory false