

execute positioned ~ -64 ~ if entity @s[dy=-10,tag=!spectate] run function _main_:games/fbg/player/kill

execute if score @s death matches 1.. run function _main_:games/fbg/player/death


