

execute positioned ~ -64 ~ if entity @s[dy=-10,tag=!spectate] run function _main_:games/fall_tag/player/kill

execute if score @s death matches 1.. run function _main_:games/fall_tag/player/death

#execute if score @s teamID matches 1 run scoreboard players set #temp rMath 0
#execute if score @s teamID matches 3 run scoreboard players set #temp rMath 1
#execute if entity @s[tag=spawned,predicate=_main_:move] run function _main_:games/global/player/set_inventory
#
#execute if score #gametime.Pause settings matches 0 if entity @s[tag=spawned] run function _main_:games/global/player/set_inventory


effect give @s resistance infinite 255 true

attribute @s block_break_speed modifier remove hunter
execute if score @s teamID matches 1 run attribute @s block_break_speed modifier add hunter 0.2 add_value




