
execute if score @s death matches 1.. run function _main_:games/bridge/player/death

execute positioned ~ -64 ~ if entity @s[dy=-10] run function _main_:games/bridge/player/kill


