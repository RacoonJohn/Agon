
data modify entity @s Item set value {id:"tnt",count:1}

attribute @s scale base set 2

data modify entity @s Motion[0] set compute default float {type:"add",inputs:[{type:"mul",inputs:[1e-3f,{type:"from_int",input:{type:"score",target:{type:"fixed",name:"#temp"},score:"motionX"}}]},"_main_:geometry/unit_x"]}
data modify entity @s Motion[1] set compute default float {type:"add",inputs:[{type:"mul",inputs:[1e-3f,{type:"from_int",input:{type:"score",target:{type:"fixed",name:"#temp"},score:"motionY"}}]},"_main_:geometry/unit_y"]}
data modify entity @s Motion[2] set compute default float {type:"add",inputs:[{type:"mul",inputs:[1e-3f,{type:"from_int",input:{type:"score",target:{type:"fixed",name:"#temp"},score:"motionZ"}}]},"_main_:geometry/unit_z"]}

data modify entity @s Owner set from storage math:data in.UUID

summon marker ~ ~ ~ {Tags:["new","grenade"]}
ride @n[tag=grenade,tag=new,type=marker] mount @s
scoreboard players operation @n[tag=grenade,tag=new,type=marker] _rin_global_ownerID = #search _rin_global_ownerID
tag @n[tag=grenade,tag=new,type=marker] remove new

