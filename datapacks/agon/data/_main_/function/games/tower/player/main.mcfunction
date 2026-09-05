


execute if entity @s[tag=!spectate] positioned ~ -64 ~ if entity @s[dy=-10] run function _main_:games/pvpkit/player/kill

execute if score @s death matches 1.. run function _main_:games/pvpkit/player/death



effect give @s resistance infinite 255 true
