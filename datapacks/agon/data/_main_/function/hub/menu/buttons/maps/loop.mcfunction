



summon text_display ~ ~ ~ \ 
    {Tags:["button","mapSelector","new"],text:{text:" "},background:-1511662126,transformation:{scale:[8.1,1,1],translation:[0.7,1.18,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:{text:"map",color:dark_gray},background:0,transformation:{scale:[0.45,0.45,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/maps/get_data



scoreboard players add #count rMath 1
scoreboard players remove #x rMath 1100
execute if score #x rMath matches ..-1300 run scoreboard players remove #y rMath 300
execute if score #x rMath matches ..-1300 run scoreboard players set #x rMath 1000

data remove storage math:data temp[0]
execute if data storage math:data temp[0] run function _main_:hub/menu/buttons/maps/loop


