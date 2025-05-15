#> deathdef : pdata <!> register

data modify storage pdata:in set.value set from entity @s Pos
data merge storage pdata:in {set:{path:'deathdef.last_pos'}}
function pdata:self/set