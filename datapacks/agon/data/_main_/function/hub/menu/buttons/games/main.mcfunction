
scoreboard players add @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 1

summon text_display ~ ~ ~ \ 
    {Tags:["button","close","new"],text:{text:" "},background:-849321888,transformation:{scale:[1.6,0.8,1],translation:[1,1.5,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:"←",background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride




execute as @e[tag=menu,predicate=_main_:search_owner,limit=1] on passengers run function _main_:hub/menu/buttons/update_brightness


data modify storage math:data temp set from storage math:data games


scoreboard players set #x rMath 1000
scoreboard players set #y rMath 1200





execute if data storage math:data temp[0] run function _main_:hub/menu/buttons/games/loop





