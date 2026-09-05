

execute unless entity @a[predicate=_main_:search_id,tag=debug] if data storage math:data preset_selected{invincible:1b} run return run tellraw @a[predicate=_main_:search_id] {text:"You can't edit this preset",color:red}


scoreboard players add @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 1

summon text_display ~ ~ ~ \ 
    {Tags:["button","close","new"],text:{text:" "},background:-849321888,transformation:{scale:[1.6,0.8,1],translation:[0.83,1.65,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:"←",background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.02,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride



summon text_display ~ ~ ~ \ 
    {Tags:["button","namePreset","new"],text:{text:" "},background:-1511662126,transformation:{scale:[8.1,1,1],translation:[1.25,1.2,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:[{storage:"math:data",nbt:"preset_selected.name",interpret:true,color:dark_gray}],background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride


summon text_display ~ ~ ~ \ 
    {Tags:["button","InvUnitedChoicePreset","new"],text:{text:" "},background:-1511662126,transformation:{scale:[8.1,1,1],translation:[0,1.6,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:"",background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute store result score #test rMath run data get storage math:data preset_selected.inventory.united
execute if score #test rMath matches 0 as @e[type=text_display,tag=button,tag=new,limit=1] on passengers run data modify entity @s text set value [{text:"Mirror Inv. ",color:dark_gray},{text:"✘",color:red}]
execute if score #test rMath matches 1 as @e[type=text_display,tag=button,tag=new,limit=1] on passengers run data modify entity @s text set value [{text:"Mirror Inv. ",color:dark_gray},{text:"✔",color:blue}]

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride


execute if score #test rMath matches 0 run function _main_:hub/menu/buttons/new_preset/inv/team
execute if score #test rMath matches 1 run function _main_:hub/menu/buttons/new_preset/inv/mirror



summon text_display ~ ~ ~ \ 
    {Tags:["button","EffectsUnitedChoicePreset","new"],text:{text:" "},background:-1511662126,transformation:{scale:[10,1,1],translation:[-1.2,1.6,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:"",background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute store result score #test rMath run data get storage math:data preset_selected.effects.united
execute if score #test rMath matches 0 as @e[type=text_display,tag=button,tag=new,limit=1] on passengers run data modify entity @s text set value [{text:"Mirror Effects ",color:dark_gray},{text:"✘",color:red}]
execute if score #test rMath matches 1 as @e[type=text_display,tag=button,tag=new,limit=1] on passengers run data modify entity @s text set value [{text:"Mirror Effects ",color:dark_gray},{text:"✔",color:blue}]

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride


execute if score #test rMath matches 0 run function _main_:hub/menu/buttons/new_preset/effects/team
execute if score #test rMath matches 1 run function _main_:hub/menu/buttons/new_preset/effects/mirror



execute if data storage math:data game_selected.settings.gamerules run summon text_display ~ ~ ~ \ 
    {Tags:["button","gamerulePreset","new"],text:{text:" "},background:-1511662126,transformation:{scale:[8.1,1,1],translation:[1.25,0.9,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:[{text:"Gamerules",color:dark_gray}],background:0,transformation:{scale:[0.5,0.5,1],translation:[0,0.07,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride


execute as @e[tag=menu,predicate=_main_:search_owner,limit=1] on passengers run function _main_:hub/menu/buttons/update_brightness
