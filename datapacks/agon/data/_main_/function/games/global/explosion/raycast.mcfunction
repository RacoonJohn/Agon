

function _main_:games/global/explosion/break

execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,tag=!victim] run function _main_:games/global/explosion/damage

scoreboard players remove #count1 rMath 4
execute if score #count1 rMath matches 1.. positioned ^ ^ ^0.4 run function _main_:games/global/explosion/raycast


