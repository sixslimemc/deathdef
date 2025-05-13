#> deathdef:_/death/vanish_check/main
#--------------------
# ./items/each
# ../populate
#- AS [proxy llama] IN varchunk:chunk
#--------------------

# set llama:
data merge entity @s {ChestedHorse:true, Strength:5, Tame:true, Silent:1b, DeathLootTable:"deathdef:_/empty"}

# set items:
data modify storage deathdef:_ var.death.vanish_check[].components.'minecraft:custom_data'.deathdef.vanish_item set value true
data modify entity @s Items set from storage deathdef:_ var.death.vanish_check

# get kill items:
kill @s
execute as @e[type=item, distance=0..0.5] if items entity @s container.0 *[minecraft:custom_data~{deathdef:{vanish_item:true}}] run function deathdef:_/death/vanish_check/on_item with entity @s Item.components.'minecraft:custom_data'.deathdef

# reset:
scoreboard players set *death.vanish_count _deathdef 0
data merge storage deathdef:_ {var:{death:{vanish_check:[]}}}