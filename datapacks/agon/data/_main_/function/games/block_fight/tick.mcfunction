
data modify storage math:data board set value []

function _main_:games/global/preset/get_game



tag @a[predicate=_main_:search_game] add myPlayer

execute as @a[tag=myPlayer] at @s run function _main_:games/block_fight/player/main

scoreboard players set #dx rMath 75
scoreboard players set #dy rMath 31
scoreboard players set #dz rMath 75
execute positioned 963 -64 995 run function _main_:games/global/warn_zone/main



tag @a remove myPlayer


execute positioned 968 -64 1000 as @e[type=item,dx=195,dz=65,dy=100] if items entity @s container.0 #_main_:concrete unless items entity @s container.0 *[custom_data~{"_rin_":{"cant_drop":true}}] run kill @s


function _main_:games/global/display/gametime

data modify storage math:data board append value ""

data modify storage _rin_:intern display.temp set value ["   ",{score:{name:"#r",objective:"points"},color:"r"}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value ["   ",{score:{name:"#b",objective:"points"},color:"b"}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp



function _main_:games/global/display/sidebar


