
scoreboard players remove #search menu.layer 1

execute on vehicle on passengers if predicate _main_:search_menu_layer run function _main_:hub/menu/buttons/close
scoreboard players remove @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 2

function _main_:hub/menu/buttons/presets/main

scoreboard players add @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 1

scoreboard players add #search menu.layer 1

