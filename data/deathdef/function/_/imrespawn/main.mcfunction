#> deathdef:_/imrespawn/main
#--------------------
# _/tick AS AT [player]
#--------------------

execute store result storage deathdef:_ var.imrespawn.pindex int 1 run scoreboard players get @s pdata.index

# store pos (incase it gets affected by death hooks):
data modify storage deathdef:_ var.imrespawn.pos set from entity @s Pos

# {..last_pos}
execute if score @s _deathdef.death matches 1.. run function deathdef:_/imrespawn/get_last_pos with storage deathdef:_ var.imrespawn
data modify storage deathdef:_ var.imrespawn.death_x set from storage deathdef:_ var.imrespawn.last_pos[0]
data modify storage deathdef:_ var.imrespawn.death_y set from storage deathdef:_ var.imrespawn.last_pos[1]
data modify storage deathdef:_ var.imrespawn.death_z set from storage deathdef:_ var.imrespawn.last_pos[2]

function deathdef:_/imrespawn/death_proxy with storage deathdef:_ var.imrespawn

function deathdef:_/imrespawn/set_last_pos with storage deathdef:_ var.imrespawn

data remove storage deathdef:_ var.imrespawn