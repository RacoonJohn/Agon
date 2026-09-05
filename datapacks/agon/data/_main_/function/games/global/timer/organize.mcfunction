

execute store result storage math:data macro.x int 1 run scoreboard players get #organizeTimer settings

scoreboard players operation #timer rMath = #organizeTimer settings
execute as @a[tag=!spectate] at @s run function _main_:games/global/no_move/set

scoreboard players operation @s invulnerability_ticks = #organizeTimer settings
scoreboard players add @s invulnerability_ticks 60


function _main_:games/global/timer/macro with storage math:data macro

