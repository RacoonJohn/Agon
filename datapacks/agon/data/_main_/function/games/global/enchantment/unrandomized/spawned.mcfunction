
data modify storage math:data motion set from entity @s Motion

data modify storage math:data x set compute default float {type:"length",inputs:[{type:"storage",storage:"math:data",path:"motion[0]"},{type:"storage",storage:"math:data",path:"motion[1]"},{type:"storage",storage:"math:data",path:"motion[2]"}]}

execute on origin run data modify storage math:data in.rotation set from entity @s Rotation

data modify entity @s Motion[0] set compute default float {type:"mul",inputs:[{type:"storage",storage:"math:data",path:"x"},"_main_:geometry/unit_x"]}
data modify entity @s Motion[1] set compute default float {type:"mul",inputs:[{type:"storage",storage:"math:data",path:"x"},"_main_:geometry/unit_y"]}
data modify entity @s Motion[2] set compute default float {type:"mul",inputs:[{type:"storage",storage:"math:data",path:"x"},"_main_:geometry/unit_z"]}

