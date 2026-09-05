


execute if score #saveStats rMath matches 1 run function _main_:games/global/stats/add_to_stats

execute if score #saveStats rMath matches 1 if score @s teamID matches 1.. run function _main_:games/global/stats/display/main


scoreboard players set @s gameID 0

tag @s remove spectate

data modify storage _rin_:in inst set value "lobby"
function _rin_:api/player/inst/load_data


effect clear @s
attribute @s attack_damage modifier remove cancel
attribute @s block_break_speed modifier remove hunter

effect give @s saturation infinite 255 true

#function _main_:hub/menu/close

tag @s remove unspawned

