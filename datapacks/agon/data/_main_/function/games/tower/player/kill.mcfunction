
damage @s 100000000 out_of_world


function _main_:games/fbg/player/tp_spawn


effect give @s resistance 2 255 true
scoreboard players set #timer rMath 20
execute unless score @s death matches 1.. at @s run function _main_:games/global/no_move/set
effect give @s resistance 2 5 false


execute at @s run playsound entity.player.big_fall
