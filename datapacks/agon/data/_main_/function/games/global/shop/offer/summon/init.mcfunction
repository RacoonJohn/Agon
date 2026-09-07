
scoreboard players operation @s shop.offerID = #count shop.offerID
scoreboard players operation @s _rin_global_ownerID = #search _rin_global_ownerID


data modify entity @s Tags set from storage math:data in.Tags
tag @s add shop.offer
tag @s add shop.private

#Piggo & 0x127 hack
#data merge entity @s {view_range:0.003,see_through:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-400f],scale:[160f,160f,1f]}}
data merge entity @s {view_range:0.003,brightness:{block:15,sky:15},interpolation_duration:3,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f],scale:[1f,1f,0.1f]}}

data modify entity @s transformation.scale[0] set compute default float {type:"mul",inputs:[1f,{type:"storage",storage:"math:data",path:"in.scale"}]}
data modify entity @s transformation.scale[1] set compute default float {type:"mul",inputs:[1f,{type:"storage",storage:"math:data",path:"in.scale"}]}

data modify storage math:data macro.left_rotation set value [0f,0f,0f,0f]
execute if entity @s[type=!text_display] run data modify storage math:data macro.left_rotation[1] set compute default float {type:"sin",input:{type:"mul",inputs:[-3.14159265359,.5f,{type:"storage",storage:"math:data",path:"in.x"}]}}
execute if entity @s[type=!text_display] run data modify storage math:data macro.left_rotation[3] set compute default float {type:"cos",input:{type:"mul",inputs:[-3.14159265359,.5f,{type:"storage",storage:"math:data",path:"in.x"}]}}
execute if entity @s[type=text_display] run data modify storage math:data macro.left_rotation[1] set compute default float {type:"cos",input:{type:"mul",inputs:[-3.14159265359,.5f,{type:"storage",storage:"math:data",path:"in.x"}]}}
execute if entity @s[type=text_display] run data modify storage math:data macro.left_rotation[3] set compute default float {type:"sin",input:{type:"mul",inputs:[3.14159265359,.5f,{type:"storage",storage:"math:data",path:"in.x"}]}}
data modify entity @s transformation.left_rotation set from storage math:data macro.left_rotation

data modify entity @s transformation.translation[0] set compute default float {type:"sin",input:{type:"mul",inputs:[-3.14159265359,1f,{type:"storage",storage:"math:data",path:"in.x"}]}}
data modify entity @s transformation.translation[2] set compute default float {type:"cos",input:{type:"mul",inputs:[-3.14159265359,1f,{type:"storage",storage:"math:data",path:"in.x"}]}}

data modify entity @s transformation.translation[1] set compute default float {type:"mul",inputs:[1f,{type:"storage",storage:"math:data",path:"in.y"}]}

execute store result score @s shop.x run data get storage math:data in.x 10000
execute store result score @s shop.y run data get storage math:data in.y 10000
execute store result score @s shop.s run data get storage math:data in.scale 10000

data modify entity @s data.cmd set from storage math:data in.cmd

