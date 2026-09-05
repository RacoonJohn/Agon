

execute unless score @s gameCount = #count gameCount unless score @s gameID matches 1.. if entity @a[scores={gameID=1..}] run function _main_:games/global/player/join_game


execute if score @s gameID matches 1.. if entity @a[scores={gameID=0}] run function _main_:games/global/player/return_to_lobby




scoreboard players reset @s join_game


