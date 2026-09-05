

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

scoreboard players set #search menu.layer 0


summon block_display ~ ~-1.5 ~ {Tags:["menu","new"],teleport_duration:1,interpolation_duration:5,Passengers:[{id:"interaction",Tags:["menuInteract"],width:4,height:2}]}

scoreboard players operation @e[tag=menu,tag=new,type=block_display,limit=1] _rin_global_ownerID = #search _rin_global_ownerID
scoreboard players operation @e[tag=menu,tag=new,type=block_display,limit=1] menu.layer = #search menu.layer

tag @e[type=block_display,tag=new] remove new


function _main_:hub/menu/buttons/start
function _main_:hub/menu/buttons/games
function _main_:hub/menu/buttons/maps
function _main_:hub/menu/buttons/presets

execute as @e[tag=menu,type=block_display,limit=1] run function _main_:hub/menu/buttons/rotate

