
tag @s[scores={vertigo.objective=2}] add vertigo.objective.kill

execute store result storage math:data macro.id int 1 run scoreboard players get @s _rin_global_playerID
data modify storage math:data macro.idx set value 0
execute if score @s vertigo.objective matches 0 run data modify storage math:data macro.value set value {text:"Keep 5s in A",color:"dark_purple"}
execute if score @s vertigo.objective matches 1 run data modify storage math:data macro.value set value {text:"Keep 35s in B",color:"dark_purple"}
execute if score @s vertigo.objective matches 2 run data modify storage math:data macro.value set value {text:"Do 1 Kill",color:"dark_purple"}
function _main_:games/global/player/bossbar/name with storage math:data macro
data modify storage math:data macro.value set value "true"
function _main_:games/global/player/bossbar/visible with storage math:data macro



execute if score @s vertigo.objective matches 0 if function _main_:games/vertigo/player/in_anchor_a run scoreboard players add @s vertigo.completion 1
execute if score @s vertigo.objective matches 1 if function _main_:games/vertigo/player/in_anchor_b run scoreboard players add @s vertigo.completion 1

execute if score @s vertigo.objective matches 0 store result storage math:data macro.value int 10 run scoreboard players get @s vertigo.completion
execute if score @s vertigo.objective matches 1 store result storage math:data macro.value int 1.4285714285 run scoreboard players get @s vertigo.completion
execute if score @s vertigo.objective matches 2 store result storage math:data macro.value int 10 run scoreboard players get @s vertigo.completion
function _main_:games/global/player/bossbar/value with storage math:data macro

execute if score @s vertigo.objective matches 0 if score @s vertigo.completion matches 100.. run function _main_:games/vertigo/player/role/new_objective
execute if score @s vertigo.objective matches 1 if score @s vertigo.completion matches 700.. run function _main_:games/vertigo/player/role/new_objective
execute if score @s vertigo.objective matches 2 if score @s vertigo.completion matches 1.. run function _main_:games/vertigo/player/role/complete



