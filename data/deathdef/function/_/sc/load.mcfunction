#> deathdef:_/sc/load
# @ LOAD

scoreboard objectives add _deathdef dummy



# DEBUG
scoreboard players reset *init _deathdef

execute unless score *init _deathdef matches 1 run function deathdef:_/sc/init