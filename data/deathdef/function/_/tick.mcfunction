#> deathdef:_/tick
#--------------------
# @tick
#--------------------
schedule function deathdef:_/tick 1t

# immediate respawn tick:
execute store result score *x _deathdef run gamerule doImmediateRespawn
execute if score *x _deathdef matches 1 run return run execute as @a run function deathdef:_/imrespawn/main

execute as @a[scores={_deathdef.death=1..}] run function deathdef:_/death/main

