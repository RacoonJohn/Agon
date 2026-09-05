
function _main_:games/global/map/unload

function _main_:hub/menu/function/save_preset with storage math:data preset_selected


function _main_:hub/menu/function/save_game with storage math:data game_selected

function _main_:hub/menu/function/get_game with entity @s data
function _main_:hub/menu/function/get_preset with storage math:data game_selected


function _main_:games/global/map/load

execute store result score #gameID settings run data get storage math:data game_selected.id

data modify entity @e[tag=description,type=text_display,limit=1] text set from storage math:data game_selected.explanation
data modify entity @e[tag=name,type=text_display,limit=1] text set from storage math:data game_selected.name

execute store result score #teamR settings run data get storage math:data game_selected.team.r
execute if score #teamR settings matches 1 as @e[type=item_display,tag=teamSelector,tag=r] at @s run tp @s ~ 2.625 ~
execute unless score #teamR settings matches 1 as @e[type=item_display,tag=teamSelector,tag=r] at @s run tp @s ~ 0 ~

execute store result score #teamG settings run data get storage math:data game_selected.team.g
execute if score #teamG settings matches 1 as @e[type=item_display,tag=teamSelector,tag=g] at @s run tp @s ~ 2.625 ~
execute unless score #teamG settings matches 1 as @e[type=item_display,tag=teamSelector,tag=g] at @s run tp @s ~ 0 ~

execute store result score #teamB settings run data get storage math:data game_selected.team.b
execute if score #teamB settings matches 1 as @e[type=item_display,tag=teamSelector,tag=b] at @s run tp @s ~ 2.625 ~
execute unless score #teamB settings matches 1 as @e[type=item_display,tag=teamSelector,tag=b] at @s run tp @s ~ 0 ~

execute store result score #teamP settings run data get storage math:data game_selected.team.p
execute if score #teamP settings matches 1 as @e[type=item_display,tag=teamSelector,tag=p] at @s run tp @s ~ 2.625 ~
execute unless score #teamP settings matches 1 as @e[type=item_display,tag=teamSelector,tag=p] at @s run tp @s ~ 0 ~


#forceload remove 9968 10000 10141 10065
#forceload remove 9968 10000 10033 10145
#forceload remove 9968 10160 9999 10191
#execute positioned 9968 -64 10240 run forceload remove ~ ~ ~160 ~160
#forceload remove 9968 10400 9999 10415
#
#execute if score #gameID settings matches 1 run forceload add 9968 10000 10141 10065
#execute if score #gameID settings matches 2 run forceload add 9968 10000 10033 10145
#execute if score #gameID settings matches 3 run forceload add 9968 10160 9999 10191
#execute if score #gameID settings matches 4 positioned 9968 -64 10240 run forceload add ~ ~ ~160 ~160
#execute if score #gameID settings matches 5 run forceload add 9968 10400 9999 10415
