#> deathdef:_/sc/load
# @ LOAD

scoreboard objectives add _deathdef dummy

gamerule keep_inventory true

# init:
execute unless score *init _deathdef matches 1 run function deathdef:_/sc/init

# reenable:
execute if score *disabled _deathdef matches 1 run function deathdef:_/sc/reenable

# caching:
execute store success score *ignore_spectators _deathdef if data storage deathdef:config {ignore_spectator_deaths:true}

# constants:
data modify storage deathdef:_ const.equipment_slots set value [head, chest, legs, feet, offhand, body, saddle]
data modify storage deathdef:_ const.equipment_slot_map.head set value "armor.head"
data modify storage deathdef:_ const.equipment_slot_map.chest set value "armor.chest"
data modify storage deathdef:_ const.equipment_slot_map.legs set value "armor.legs"
data modify storage deathdef:_ const.equipment_slot_map.feet set value "armor.feet"
data modify storage deathdef:_ const.equipment_slot_map.offhand set value "weapon.offhand"
data modify storage deathdef:_ const.equipment_slot_map.body set value "armor.body"
data modify storage deathdef:_ const.equipment_slot_map.saddle set value "saddle"
