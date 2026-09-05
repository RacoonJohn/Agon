scoreboard players add @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 1


data modify storage math:data effect_selected set value {}
$data modify storage math:data effect_selected set from storage math:data effects_selected."$(id)"

execute unless data storage math:data effect_selected.duration run data modify storage math:data effect_selected.duration set value 1
execute unless data storage math:data effect_selected.amplifier run data modify storage math:data effect_selected.amplifier set value 0
execute unless data storage math:data effect_selected.particle run data modify storage math:data effect_selected.particle set value 0
$data modify storage math:data effect_selected.id set value "$(id)"


summon text_display ~ ~ ~ \ 
    {Tags:["button","close","new"],text:{text:" "},background:-849321888,transformation:{scale:[1.6,0.8,1],translation:[1,1.8,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:"←",background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride

summon text_display ~ ~ ~ \ 
    {Tags:["button","resetEffect","new"],text:{text:" "},background:-849321888,transformation:{scale:[1.6,0.8,1],translation:[0.75,1.8,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:{color:red,text:"∅"},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride


##-------------



$summon text_display ~ ~ ~ \ 
    {Tags:["button","new"],text:{text:" "},background:0,transformation:{scale:[8,1,1],translation:[0,1.7,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:{translate:"effect.minecraft.$(id)",color:dark_gray,shadow_color:-845176417},background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride


function _main_:hub/menu/buttons/multi_value/main {translation:[1,1.45,0],inf:1,1:1,label:[{text:"Duration: ",color:dark_gray},{storage:"math:data",nbt:"effect_selected.duration",interpret:0b},{text:"s"}],nbt:"effect_selected.duration",storage:"math:data",min:1,max:1000,background:-1511662126}

function _main_:hub/menu/buttons/multi_value/main {translation:[-1,1.45,0],inf:0,1:0,label:[{text:"Amplifier: ",color:dark_gray},{storage:"math:data",nbt:"effect_selected.amplifier",interpret:0b}],nbt:"effect_selected.amplifier",storage:"math:data",min:0,max:255,background:-1511662126}



function _main_:hub/menu/buttons/switch/main {translation:[0,1.45,0],scale:[7,1,1],label:{text:"Particle ",color:dark_gray},nbt:"effect_selected.particle",storage:"math:data",background:-1511662126}




execute as @e[tag=menu,predicate=_main_:search_owner,limit=1] on passengers run function _main_:hub/menu/buttons/update_brightness
