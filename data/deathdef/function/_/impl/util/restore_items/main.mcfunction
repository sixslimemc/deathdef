# IMPL > deathdef : util/restore_items
# main
kill @s

execute if data storage deathdef:in restore_items.items[0] run function deathdef:_/impl/util/restore_items/each
