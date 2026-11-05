
function _main_:games/global/preset/get_game
tag @a[predicate=_main_:search_game] add myPlayer



execute if score #search teamID matches 1 run data modify storage _rin_:intern display.temp set value {text:"Blue",color:"b"}
execute if score #search teamID matches 3 run data modify storage _rin_:intern display.temp set value {text:"Red",color:"r"}

function _rin_:sys/style/change_color

title @a[tag=myPlayer] times 20 60 20
title @a[tag=myPlayer] subtitle [{text:"the game",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"display.temp",storage:"_rin_:intern",interpret:true},{text:" won",color:"gold"}]


execute as @a[tag=myPlayer,predicate=!_main_:search_team] run function _main_:games/global/fx/win_final
execute as @a[tag=myPlayer,predicate=_main_:search_team] run function _main_:games/global/fx/loose_final


execute as @a[tag=myPlayer] run attribute @s attack_damage modifier add cancel -1 add_multiplied_total

schedule function _main_:games/block_fight/end 60



tag @a[tag=myPlayer] remove myPlayer
