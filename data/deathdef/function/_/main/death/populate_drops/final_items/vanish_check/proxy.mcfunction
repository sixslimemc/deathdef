#> deathdef:_/main/death/populate_drops/final_items/vanish_check/proxy
# [AS] proxy llama
#--------------------
# ./do
#--------------------

# set data:
data merge entity @s {Strength:5, ChestedHorse:true, Tame:true, Silent:1b, DeathLootTable:"deathdef:_/empty"}

# set items:
data modify entity @s Items set from storage deathdef:_ t.death.vanish_check

# get kill items:
kill @s
execute as @e[type=item, distance=0..0.5] if items entity @s container.0 *[minecraft:custom_data~{_deathdef:{vanish:{flag:true}}}] run function deathdef:_/main/death/populate_drops/final_items/vanish_check/on_item
kill @e[type=item, distance=0..0.5, tag=!_, tag=!__]

tp ~ -99999 ~