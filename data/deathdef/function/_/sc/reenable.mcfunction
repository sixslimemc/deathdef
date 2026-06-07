#> deathdef:_/sc/reenable
#--------------------
# _/sc/load
#--------------------
scoreboard players reset *disabled _deathdefault

# keep_inventory:
execute store result score *x _deathdef run gamerule keep_inventory
execute if score *x _deathdef matches 1 run data modify storage deathdef:config keep_inventory set value true
execute unless score *x _deathdef matches 1 run data modify storage deathdef:config keep_inventory set value false