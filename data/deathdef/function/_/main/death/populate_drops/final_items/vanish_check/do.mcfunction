#> deathdef:_/main/death/populate_drops/final_items/vanish_check/do
#--------------------
# ../do
# ../each
#--------------------

data modify storage deathdef:_ t.death.vanish_check[].components.'minecraft:custom_data'._deathdef.vanish.flag set value true

# llama proxy:
execute in varchunk:chunk positioned 1 1 1 summon llama run function deathdef:_/main/death/populate_drops/final_items/vanish_check/proxy

# reset:
scoreboard players set *death.vanish_count _deathdef 0
data modify storage deathdef:_ t.death.vanish_check set value []