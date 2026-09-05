


execute if entity @s[tag=!spectate] positioned ~ -64 ~ if entity @s[dy=-10] run function _main_:games/vertigo/player/kill

execute if score @s death matches 1.. run function _main_:games/vertigo/player/death


