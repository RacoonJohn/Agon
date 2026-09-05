#🗡🪓🛡🧪

scoreboard players set #count rMath 0

execute if data storage math:data game_selected.team{r:1b} run summon text_display ~ ~ ~ \ 
    {Tags:["button","editEffects","EffectsRPreset","new"],text:{text:" "},background:-839010166,transformation:{scale:[6.84,0.85,1],translation:[-1.2,1.35,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:["",{text:"🗡",font:"pvp:icons"},{text:"Effects"}],background:0,transformation:{scale:[0.425,0.425,1],translation:[0,0.0595,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}


scoreboard players operation @e[type=text_display,tag=button,tag=new,limit=1] menu.id = #count rMath
execute if entity @e[type=text_display,tag=button,tag=new,limit=1] run scoreboard players add #count rMath 1

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride



execute if data storage math:data game_selected.team{g:1b} run summon text_display ~ ~ ~ \ 
    {Tags:["button","editEffects","EffectsGPreset","new"],text:{text:" "},background:-841875506,transformation:{scale:[6.84,0.85,1],translation:[-1.2,1.10,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:["",{text:"🪓",font:"pvp:icons"},{text:"Effects"}],background:0,transformation:{scale:[0.425,0.425,1],translation:[0,0.0595,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

scoreboard players operation @e[type=text_display,tag=button,tag=new,limit=1] menu.id = #count rMath
execute if entity @e[type=text_display,tag=button,tag=new,limit=1] run scoreboard players add #count rMath 1

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride



execute if data storage math:data game_selected.team{b:1b} run summon text_display ~ ~ ~ \ 
    {Tags:["button","editEffects","EffectsBPreset","new"],text:{text:" "},background:-841756929,transformation:{scale:[6.84,0.85,1],translation:[-1.2,0.85,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:["",{text:"🛡",font:"pvp:icons"},{text:"Effects"}],background:0,transformation:{scale:[0.425,0.425,1],translation:[0,0.0595,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

scoreboard players operation @e[type=text_display,tag=button,tag=new,limit=1] menu.id = #count rMath
execute if entity @e[type=text_display,tag=button,tag=new,limit=1] run scoreboard players add #count rMath 1

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride



execute if data storage math:data game_selected.team{p:1b} run summon text_display ~ ~ ~ \ 
    {Tags:["button","editEffects","EffectsPPreset","new"],text:{text:" "},background:-838873346,transformation:{scale:[6.84,0.85,1],translation:[-1.20,0.60,0],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15},Passengers:[\ 
    {id:"text_display",text:["",{text:"🧪",font:"pvp:icons"},{text:"Effects"}],background:0,transformation:{scale:[0.425,0.425,1],translation:[0,0.0595,-0.01],left_rotation:[0,1,0,0],right_rotation:[0,0,0,1]},interpolation_duration:3,brightness:{block:15,sky:15}}\ 
    ]}

scoreboard players operation @e[type=text_display,tag=button,tag=new,limit=1] menu.id = #count rMath
execute if entity @e[type=text_display,tag=button,tag=new,limit=1] run scoreboard players add #count rMath 1

execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/rotate
execute as @e[type=text_display,tag=button,tag=new,limit=1] run function _main_:hub/menu/buttons/ride
