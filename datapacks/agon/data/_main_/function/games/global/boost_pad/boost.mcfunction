
#execute unless data storage math:data in.rotation run function #temp_attributes:add {type:"friction_modifier",id:"boost_pad",operation:"add_multiplied_total",value:-0.2,time:2}
execute unless data storage math:data in.rotation run return run function #temp_attributes:add {type:"movement_speed",id:"boost_pad",operation:"add_multiplied_total",value:1,time:3}

data modify storage math:data in.rotation[1] set from entity @s Rotation[0]
data modify storage math:data x set compute default float {type:"max",inputs:[0,{type:"cos",input:{type:"mul",inputs:[0.01745329252,{type:"sub",left:{type:"storage",storage:"math:data",path:"in.rotation[0]"},right:{type:"storage",storage:"math:data",path:"in.rotation[1]"}}]}}]}

data modify storage math:data macro set value {type:"movement_speed",id:"boost_pad",operation:"add_multiplied_total",value:4,time:3}
data modify storage math:data macro.value set compute default float {type:"mul",inputs:[1.1,{type:"storage",storage:"math:data",path:"x"}]} 
function #temp_attributes:add with storage math:data macro

#data modify storage math:data macro set value {type:"friction_modifier",id:"boost_pad",operation:"add_multiplied_total",value:-0.66,time:2}
#data modify storage math:data macro.value set compute default float {type:"mul",inputs:[-0.66,{type:"storage",storage:"math:data",path:"x"}]} 
#function #temp_attributes:add with storage math:data macro

