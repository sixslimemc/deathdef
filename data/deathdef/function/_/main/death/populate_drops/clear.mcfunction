#> deathdef:_/main/death/populate_drops/clear
#--------------------
# ./do
#--------------------

clear @s *[!minecraft:custom_data~{__:true}]

# so xp tracking can stay somewhat consistent:
$xp add @s -$(xp) points

# just incase xp surpasses int limit:
xp set @s 0 levels
xp set @s 0 points