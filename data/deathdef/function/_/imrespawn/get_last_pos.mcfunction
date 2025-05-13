#> deathdef:_/imrespawn/get_last_pos
#--------------------
# ./main
#--------------------

$data modify storage deathdef:_ var.imrespawn.last_pos set from storage pdata:data players[$(pindex)].data.deathdef.last_pos
