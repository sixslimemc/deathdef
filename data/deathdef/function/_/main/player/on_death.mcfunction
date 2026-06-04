#> deathdef:_/main/player/on_death
#--------------------
# _/subscriber/idied/death
#--------------------

execute if score *ignore_spectators _deathdef matches 1 if entity @s[gamemode=spectator] run return 0
