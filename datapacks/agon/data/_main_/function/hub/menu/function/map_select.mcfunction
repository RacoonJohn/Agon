

function _main_:games/global/map/unload

execute store result storage math:data game_selected.map.selected int 1 run scoreboard players get @s menu.id

function _main_:hub/menu/function/map_select_macro with storage math:data game_selected.map



function _main_:games/global/map/load
