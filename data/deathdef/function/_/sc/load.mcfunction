#> deathdef:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _deathdef dummy

scoreboard objectives add _deathdef.xp xp

gamerule keepInventory true

execute unless score *init _deathdef matches 1 run function deathdef:_/init

data modify storage deathdef:_ const.equipment_slots set value ['offhand', 'head', 'chest', 'legs', 'feet']