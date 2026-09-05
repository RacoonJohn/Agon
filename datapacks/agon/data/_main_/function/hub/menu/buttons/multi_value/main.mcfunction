

$scoreboard players set #inf rMath $(inf)
$scoreboard players set #1 rMath $(1)

$data modify storage math:data macro set value {translation:$(translation),nbt:"$(nbt)",storage:"$(storage)",min:$(min),max:$(max),background:$(background)}

execute store result score #x rMath run data get storage math:data macro.translation[0] 1000
execute store result score #y rMath run data get storage math:data macro.translation[1] 1000
execute store result score #z rMath run data get storage math:data macro.translation[2] 1000


$summon text_display ~ ~ ~ \ 
    {Tags:["button","mvLabel","new"],text:{text:" "},background:-845176417,transformation:{scale:[8,1,1],translation:[1,1.45,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
{id:"text_display",Tags:["label"],data:{label:$(label)},text:"",background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/multi_value/get


scoreboard players add #x rMath 400
scoreboard players remove #y rMath 250
summon text_display ~ ~ ~ \ 
    {Tags:["button","mv+","new"],text:{text:" "},background:-845176417,transformation:{scale:[1.6,0.8,1],translation:[1.4,1.2,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
{id:"text_display",text:{text:"+",color:dark_gray},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/multi_value/get


scoreboard players remove #x rMath 250
summon text_display ~ ~ ~ \ 
    {Tags:["button","mvf","new"],text:{text:" "},background:-845176417,transformation:{scale:[1.6,0.8,1],translation:[1.15,1.2,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
{id:"text_display",text:{text:"×2",color:dark_gray},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/multi_value/get

scoreboard players remove #x rMath 250
execute if score #inf rMath matches 1 run summon text_display ~ ~ ~ \ 
    {Tags:["button","mvi","new"],text:{text:" "},background:-845176417,transformation:{scale:[1.6,0.8,1],translation:[0.9,1.2,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
{id:"text_display",text:{text:"∞",color:dark_gray},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/multi_value/get


execute store result score #x rMath run data get storage math:data macro.translation[0] 1000
scoreboard players add #x rMath 400
scoreboard players remove #y rMath 250
summon text_display ~ ~ ~ \ 
    {Tags:["button","mv-","new"],text:{text:" "},background:-845176417,transformation:{scale:[1.6,0.8,1],translation:[1.4,0.95,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
{id:"text_display",text:{text:"-",color:dark_gray},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/multi_value/get

scoreboard players remove #x rMath 250
summon text_display ~ ~ ~ \ 
    {Tags:["button","mvd","new"],text:{text:" "},background:-845176417,transformation:{scale:[1.6,0.8,1],translation:[1.15,0.95,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
{id:"text_display",text:{text:"÷2",color:dark_gray},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/multi_value/get

scoreboard players remove #x rMath 250
execute if score #1 rMath matches 1 run summon text_display ~ ~ ~ \ 
    {Tags:["button","mv1","new"],text:{text:" "},background:-845176417,transformation:{scale:[1.6,0.8,1],translation:[0.9,0.95,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
{id:"text_display",text:{text:"1",color:dark_gray},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/multi_value/get
