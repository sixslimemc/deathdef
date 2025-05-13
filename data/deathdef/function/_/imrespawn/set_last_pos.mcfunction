#> deathdef:_/imrespawn/set_last_pos
#--------------------
# ./main AS [player]
#--------------------

$data modify storage pdata:data players[$(pindex)].data.deathdef.last_pos set from storage deathdef:_ var.imrespawn.pos