
execute if predicate _main_:flag/on_ground run return fail

data modify storage dapvp:math Motion set from entity @s Motion
execute unless predicate dapvp:system/is_player run return run data modify entity @s Motion[1] set compute default float {type:"add",inputs:[0.4,{type:"storage",storage:"dapvp:math",path:"Motion[1]",fallback:0}]}



function #temp_attributes:add {type:"gravity",id:"dapvp:hurt0",operation:"add_multiplied_base",value:-1,time:0}
function #temp_attributes:add {type:"gravity",id:"dapvp:hurt1",operation:"add_value",value:-0.6,time:0}

#scoreboard players set #x fptrick_impulse 0
#scoreboard players set #y fptrick_impulse 400
#scoreboard players set #z fptrick_impulse 0
#
#function fptrick_impulse:launch_global
