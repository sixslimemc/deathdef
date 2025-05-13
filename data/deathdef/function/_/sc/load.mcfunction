#> deathdef:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _deathdef dummy

scoreboard objectives add _deathdef.death deathCount
scoreboard objectives add _deathdef.xp xp

gamerule keepInventory true

execute unless score *init _deathdef matches 1 run function deathdef:_/init