#> deathdef:_/sc/load
# @ LOAD

scoreboard objectives add _deathdef dummy

gamerule keep_inventory true

# init:
execute unless score *init _deathdef matches 1 run function deathdef:_/sc/init

# reenable:
execute if score *disabled _deathdef matches 1 run function deathdef:_/sc/reenable

# caching:
execute store success score *ignore_spectators _deathdef if data storage deathdef:config {ignore_spectator_deaths:true}

# constants:
data modify storage deathdef:_ const.equipment_slots set value [head, chest, legs, feet, offhand, body, saddle]
