
execute store result storage math:data macro.id int 1 run scoreboard players get @s _rin_global_playerID
data modify storage math:data macro.idx set value 0
data modify storage math:data macro.value set value "false"
function _main_:games/global/player/bossbar/visible with storage math:data macro
