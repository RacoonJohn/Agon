
data modify storage math:data macro set value {type:"jump_strength",id:"jump_pad",operation:"add_multiplied_total",value:2,time:2}
data modify storage math:data macro.value set compute default float {type:"storage",storage:"math:data",path:"map_selected.attributes.jump_pad",fallback:2}

execute unless score #big rMath matches 1 run function #temp_attributes:add with storage math:data macro

execute if score #big rMath matches 1 run data modify storage math:data macro.value set compute default float {type:"mul",inputs:[2.5f,{type:"storage",storage:"math:data",path:"map_selected.attributes.jump_pad",fallback:2}]}
execute if score #big rMath matches 1 run function #temp_attributes:add with storage math:data macro


data modify storage math:data macro.value set compute default float _main_:attributes/safe_height_multiplied_total

function _main_:games/global/jump_pad/attribute_macro with storage math:data macro

tag @s add jumpPaded
