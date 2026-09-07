
data modify storage math:data board set value []


function _main_:games/global/preset/get_game


tag @a[predicate=_main_:search_game] add myPlayer

execute as @a[tag=myPlayer] at @s run function _main_:games/fall_tag/player/main

scoreboard players set #dx rMath 41
scoreboard players set #dy rMath 18
scoreboard players set #dz rMath 41
execute positioned 963 -64 995 run function _main_:games/global/warn_zone/main

execute positioned 968 -64 1000 as @e[type=item,dx=195,dz=65,dy=100] if items entity @s container.0 #wool unless items entity @s container.0 *[custom_data~{"_rin_":{"cant_drop":true}}] run kill @s



scoreboard players operation Math.In0 rMath = #fall_tagTimer settings 
scoreboard players operation Math.In0 rMath -= #gametime2 rMath 

scoreboard players set #search teamID 1
execute if score #end rMath matches 0 if score Math.In0 rMath matches 0 run function _main_:games/fall_tag/win_round

tag @a remove myPlayer

execute if score Math.In0 rMath matches ..-1 run scoreboard players set Math.In0 rMath 0

function math:convert/tick_to_mmss
data modify storage _rin_:intern display.temp set value [{text:" ",bold:false},{nbt:"out.min",storage:"math:data",interpret:true,color:"text"},{text:":",color:"text-muted"},{nbt:"out.sec",storage:"math:data",interpret:true,color:"text"}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp

data modify storage math:data board append value ""

scoreboard players operation #limit rMath = #fall_tagBo settings
scoreboard players set #count rMath 0
scoreboard players operation #limit1 rMath = #r points
scoreboard players operation #limit3 rMath = #b points
data modify storage math:data str set value {rc:"🗡",gc:"🪓",bc:"🛡",pc:"🧪"}
function _main_:games/global/display/points/loop
data modify storage _rin_:intern display.temp set value ["",{nbt:"str.r",storage:"math:data",interpret:true,color:"r",font:"pvp:icons"},{nbt:"str.r_",storage:"math:data",interpret:true,color:"rm",font:"pvp:icons"}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value ["",{nbt:"str.b",storage:"math:data",interpret:true,color:"b",font:"pvp:icons"},{nbt:"str.b_",storage:"math:data",interpret:true,color:"bm",font:"pvp:icons"}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp




function _main_:games/global/display/sidebar


