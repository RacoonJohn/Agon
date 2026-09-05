

summon text_display ~ ~ ~ \ 
    {Tags:["button","start","new"],text:{text:" "},background:-849321888,transformation:{scale:[7.6,1.2,4],translation:[0,0.83,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:{text:"START",shadow_color:-1521331626},background:0,transformation:{scale:[1,1,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride
