

scoreboard players add @s canceled 1
scoreboard players operation @s canceled %= #2 rMath

scoreboard players set @s cancel 0

execute if score @s canceled matches 1 run return run function _main_:games/global/player/cancel/test
execute if score @s canceled matches 0 run tellraw @s {text:"Vote cancelled",color:"red"}



