
summon text_display ~ ~ ~ \ 
    {Tags:["button","editEffects","EffectsUnitedPreset","new"],text:{text:" "},background:-841365850,transformation:{scale:[6.84,0.85,1],translation:[-1.2,1.35,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:{text:"Effects"},background:0,transformation:{scale:[0.425,0.425,1],translation:[0,0.0595,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

scoreboard players set @e[type=text_display,tag=button,tag=new,limit=1] menu.id -1

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride
