

data modify storage math:data macro.x set compute default float {type:"mul",inputs:[1e-3f,{type:"from_int",input:{type:"sub",left:{type:"score",score:"posX-1",target:"this"},right:{type:"score",score:"posX",target:"this"}}}]}
data modify storage math:data macro.y set compute default float {type:"mul",inputs:[1e-3f,{type:"from_int",input:{type:"sub",left:{type:"score",score:"posY-1",target:"this"},right:{type:"score",score:"posY",target:"this"}}}]}
data modify storage math:data macro.z set compute default float {type:"mul",inputs:[1e-3f,{type:"from_int",input:{type:"sub",left:{type:"score",score:"posZ-1",target:"this"},right:{type:"score",score:"posZ",target:"this"}}}]}


data modify storage math:data raycast set value {with:{max_distance:16,on_targeted_block:"function _main_:games/global/player/items/temp_wools/place"}}
execute store result storage math:data raycast.with.max_distance float 0.001 run attribute @s block_interaction_range get 1000

function _main_:games/global/player/items/temp_wools/raycast with storage math:data macro

tag @s remove temp_block_placed
