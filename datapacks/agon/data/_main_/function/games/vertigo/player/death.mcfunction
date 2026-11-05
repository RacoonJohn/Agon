
scoreboard players reset @s death


function _main_:games/vertigo/player/respawn


scoreboard players operation #search teamID = @s teamID
execute unless entity @e[tag=vertigo.rush,tag=_rin_sys_cloned,predicate=_main_:search_game,predicate=_main_:search_team,type=item_display] run return fail

execute if score #search teamID matches 1 store result score #vertigo.rush1 rMath run compute default float {type:"max",inputs:[0,{type:"sub",left:{type:"from_int",input:{type:"score",score:"rMath",target:{type:"fixed",name:"#vertigo.rush1"}}},right:{type:"mul",inputs:[0.2,{type:"from_int",input:{type:"score",score:"settings",target:{type:"fixed",name:"#vertigo.rush"}}}]}}]}
execute if score #search teamID matches 2 store result score #vertigo.rush2 rMath run compute default float {type:"max",inputs:[0,{type:"sub",left:{type:"from_int",input:{type:"score",score:"rMath",target:{type:"fixed",name:"#vertigo.rush2"}}},right:{type:"mul",inputs:[0.2,{type:"from_int",input:{type:"score",score:"settings",target:{type:"fixed",name:"#vertigo.rush"}}}]}}]}
execute if score #search teamID matches 3 store result score #vertigo.rush3 rMath run compute default float {type:"max",inputs:[0,{type:"sub",left:{type:"from_int",input:{type:"score",score:"rMath",target:{type:"fixed",name:"#vertigo.rush3"}}},right:{type:"mul",inputs:[0.2,{type:"from_int",input:{type:"score",score:"settings",target:{type:"fixed",name:"#vertigo.rush"}}}]}}]}
execute if score #search teamID matches 4 store result score #vertigo.rush4 rMath run compute default float {type:"max",inputs:[0,{type:"sub",left:{type:"from_int",input:{type:"score",score:"rMath",target:{type:"fixed",name:"#vertigo.rush4"}}},right:{type:"mul",inputs:[0.2,{type:"from_int",input:{type:"score",score:"settings",target:{type:"fixed",name:"#vertigo.rush"}}}]}}]}

function _main_:games/vertigo/rush/update

