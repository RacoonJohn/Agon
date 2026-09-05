

summon text_display ~ ~ ~ \ 
    {Tags:["button","games","new"],text:{text:" "},background:-1511662126,transformation:{scale:[6.48,1,1],translation:[0.635,1.18,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:{text:"games",color:"dark_gray"},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride
