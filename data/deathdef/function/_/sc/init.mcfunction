#> deathdef:_/sc/init
# @ INIT
scoreboard players set *init _deathdef 1

data modify storage deathdef:config ignore_spectator_deaths set value true

execute store result score *x _deathdef run gamerule keep_inventory
execute if score *x _deathdef matches 1 run data modify storage deathdef:config keep_inventory set value true
execute unless score *x _deathdef matches 1 run data modify storage deathdef:config keep_inventory set value false