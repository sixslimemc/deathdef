#> deathdef : util/restore_items

data remove storage deathdef:out restore_items

function deathdef:_/impl/util/restore_items/main

data remove storage deathdef:_ v.restore_items
data remove storage deathdef:in restore_items

return 1