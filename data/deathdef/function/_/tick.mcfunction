#> deathdef:_/tick
#--------------------
# @tick
#--------------------
schedule function deathdef:_/tick 1t

# immediate respawn tick:
execute store result score *x _deathdef run gamerule doImmediateRespawn
execute if score *x _deathdef matches 1 run return run execute as @a at @s run function deathdef:_/imrespawn/main

execute as @a[scores={_deathdef.death=1..}] at @s run function deathdef:_/death/main

