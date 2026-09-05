

function _main_:games/global/map/unload

execute store result storage math:data game_selected.map.selected int 1 run scoreboard players get @s menu.id

#data modify entity @e[tag=name,type=text_display,limit=1] text set from storage math:data game_selected.name


function _main_:games/global/map/load
