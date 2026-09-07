
tag @s add vertigo.objective.kill

execute store result storage math:data macro.id int 1 run scoreboard players get @s _rin_global_playerID
data modify storage math:data macro.idx set value 0
execute if score @s vertigo.objective matches 0 run data modify storage math:data macro.value set value {text:"Do 5 Kill",color:"dark_purple"}
function _main_:games/global/player/bossbar/name with storage math:data macro
data modify storage math:data macro.value set value "true"
function _main_:games/global/player/bossbar/visible with storage math:data macro


execute store result storage math:data macro.value int 200 run scoreboard players get @s vertigo.completion
function _main_:games/global/player/bossbar/value with storage math:data macro

execute if score @s vertigo.completion matches 5.. run function _main_:games/vertigo/player/role/complete



