#> deathdef : util/restore_items

data remove storage deathdef:out restore_items

tag @s add _deathdef.restore
execute summon item_display run function deathdef:_/impl/util/restore_items/main
tag @s remove _deathdef.restore

data remove storage deathdef:_ v.restore_items
data remove storage deathdef:in restore_items

return 1