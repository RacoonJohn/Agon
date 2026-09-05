
$summon text_display ~ ~ ~ \ 
    {Tags:["button","switch","new"],text:{text:" "},background:$(background),transformation:{scale:$(scale),translation:$(translation),left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",data:{label:$(label),nbt:"$(nbt)",storage:"$(storage)"},text:"",background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

$execute store result score #test rMath run data get storage $(storage) $(nbt)
$execute if score #test rMath matches 0 as @e[type=text_display,tag=button,tag=new,limit=1] on passengers run data modify entity @s text set value [$(label),{text:"✘",color:red}]
$execute if score #test rMath matches 1 as @e[type=text_display,tag=button,tag=new,limit=1] on passengers run data modify entity @s text set value [$(label),{text:"✔",color:blue}]


execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride

