#data modify entity @s view_range set value 0f
#execute on passengers run data modify entity @s view_range set value 0f


data modify entity @s brightness set value {block:8,sky:8}
execute on passengers run data modify entity @s brightness set value {block:8,sky:8}


data modify storage math:data temp set from entity @s transformation
execute store result storage math:data temp.scale[0] float 0.008 run scoreboard players get @s menu.dx
execute store result storage math:data temp.scale[1] float 0.004 run scoreboard players get @s menu.dy
execute store result storage math:data temp.scale[2] float 0.004 run scoreboard players get @s menu.dz

data modify storage math:data temp.scale[0] set compute default float {type:mul,inputs:[0.8333333333,{type:"storage",storage:"math:data",path:"temp.scale[0]"}]}
data modify storage math:data temp.scale[1] set compute default float {type:mul,inputs:[1.428571429,{type:"storage",storage:"math:data",path:"temp.scale[1]"}]}

data modify storage math:data temp.translation[0] set compute default float {type:add,inputs:[{type:"mul",inputs:[-0.015,{type:"storage",storage:"math:data",path:"temp.scale[0]"}]},{type:"storage",storage:"math:data",path:"temp.translation[0]"}]}
data modify storage math:data temp.translation[1] set compute default float {type:add,inputs:[{type:"mul",inputs:[-0.015,{type:"storage",storage:"math:data",path:"temp.scale[0]"}]},{type:"storage",storage:"math:data",path:"temp.translation[1]"}]}
data modify storage math:data temp.translation[2] set compute default float {type:add,inputs:[-0.015,{type:"storage",storage:"math:data",path:"temp.translation[2]"}]}

summon text_display ~ ~ ~ \ 
    {Tags:["button","hidden","hide_cross","new","new1"],text:{text:"❌",color:"#ff0000"},text_opacity:125,background:0,transformation:{scale:[5.4,1,1],translation:[-0.17,1.18,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}

data modify entity @e[type=text_display,tag=button,tag=new,limit=1] transformation set from storage math:data temp

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride
ride @e[type=text_display,tag=button,tag=new1,limit=1] dismount
ride @e[type=text_display,tag=button,tag=new1,limit=1] mount @s
tag @e[type=text_display,tag=button,tag=new1] remove new1

function _main_:hub/menu/buttons/update_brightness

tag @s add hidden
