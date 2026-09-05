
execute if score #power rMath matches ..0 run return fail

scoreboard players operation #limit rMath = #power rMath
scoreboard players operation #count0 rMath = #limit rMath


execute summon marker run function _main_:games/global/explosion/loop

tag @e[tag=victim] remove victim

execute if score #knockback rMath matches 0 run return fail

execute store result storage math:data macro.x float 0.1 run scoreboard players get #limit rMath
function _main_:games/global/explosion/kb with storage math:data macro
