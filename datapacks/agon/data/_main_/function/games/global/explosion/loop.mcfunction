
execute store result entity @s Rotation[0] float 0.01 run random value -18000..18000
execute store result entity @s Rotation[1] float 0.01 run random value -9000..9000




function _main_:games/global/explosion/break

scoreboard players operation #count1 rMath = #limit rMath
execute rotated as @s positioned ^ ^ ^0.5 run function _main_:games/global/explosion/raycast


scoreboard players remove #count0 rMath 1
execute if score #count0 rMath matches 1.. run return run function _main_:games/global/explosion/loop

kill @s
