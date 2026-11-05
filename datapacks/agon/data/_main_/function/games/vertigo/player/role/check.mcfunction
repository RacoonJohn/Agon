

function _main_:games/vertigo/player/role/get/role
function _main_:games/vertigo/player/role/get/objective

data modify storage math:data display set value []
data modify storage math:data in.objective set from storage math:data my_objective
function _main_:games/vertigo/player/role/get/objective_display with storage math:data in.objective
data modify storage math:data display[0].color set value "dark_purple"

execute store result storage math:data macro.id int 1 run scoreboard players get @s _rin_global_playerID
data modify storage math:data macro.idx set value 0
data modify storage math:data macro.value set value {storage:"math:data",nbt:"display",interpret:true}
function _main_:games/global/player/bossbar/name with storage math:data macro
data modify storage math:data macro.value set value "true"
function _main_:games/global/player/bossbar/visible with storage math:data macro

data modify storage math:data in.x set from storage math:data my_objective.value


execute if data storage math:data my_objective{type:"kill"} run tag @s add vertigo.objective.kill
execute if data storage math:data my_objective{type:"kill_range"} run tag @s add vertigo.objective.kill_range
execute if data storage math:data my_objective{type:"kill_melee"} run tag @s add vertigo.objective.kill_melee
execute if data storage math:data my_objective{type:"stay_a"} if function _main_:games/vertigo/player/in_anchor_a run scoreboard players add @s vertigo.completion 1
execute if data storage math:data my_objective{type:"stay_b"} if function _main_:games/vertigo/player/in_anchor_b run scoreboard players add @s vertigo.completion 1

execute if data storage math:data my_objective{type:"stay_a"} run data modify storage math:data in.x set compute default float {type:"mul",inputs:[20,{type:"storage",storage:"math:data",path:"in.x"}]}
execute if data storage math:data my_objective{type:"stay_b"} run data modify storage math:data in.x set compute default float {type:"mul",inputs:[20,{type:"storage",storage:"math:data",path:"in.x"}]}


data modify storage math:data macro.value set compute entity @s float {type:"div",left:{type:"mul",inputs:[1000,{type:"from_int",input:{type:"score",score:"vertigo.completion",target:"this"}}]},right:{type:"storage",storage:"math:data",path:"in.x"}}
data modify storage math:data macro.value set compute default integer {type:"storage",storage:"math:data",path:"macro.value"}
function _main_:games/global/player/bossbar/value with storage math:data macro

execute store result score #max rMath run data get storage math:data in.x

scoreboard players add @s vertigo.objective 1
function _main_:games/vertigo/player/role/get/objective
scoreboard players remove @s vertigo.objective 1

execute unless data storage math:data my_objective if score @s vertigo.completion >= #max rMath run function _main_:games/vertigo/player/role/complete
execute if score @s vertigo.completion >= #max rMath run function _main_:games/vertigo/player/role/new_objective




