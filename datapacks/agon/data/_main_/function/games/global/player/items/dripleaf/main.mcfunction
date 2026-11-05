
attribute @s gravity modifier remove hover_dripleaf
attribute @s air_drag_modifier modifier remove hover_dripleaf

data modify storage math:data in.x set from entity @s Motion[1]
#execute if predicate {type:"float_value_check",test:{min:-0.1},value:{type:"storage",path:"in.x",storage:"math:data"}} run return fail


execute unless predicate {type:"float_value_check",test:{min:-0.1,max:0.3},value:{type:"storage",path:"in.x",storage:"math:data"}} unless predicate {type:"float_value_check",test:{min:0.48},value:{type:"storage",path:"in.x",storage:"math:data"}} if items entity @s[predicate=!_main_:flag/on_ground] weapon.* *[custom_data~{item:"hover_dripleaf"},damage~{durability:{min:1}}] run return run function _main_:games/global/player/items/dripleaf/hover

execute if predicate {type:"float_value_check",test:{min:-0.1,max:0.3},value:{type:"storage",path:"in.x",storage:"math:data"}} run function _main_:games/global/player/items/dripleaf/restore

effect clear @s slow_falling


