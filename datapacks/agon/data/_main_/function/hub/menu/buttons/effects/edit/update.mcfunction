

$execute if score #reset rMath matches 0 run data modify storage math:data effects_selected."$(id)" set value {duration:$(duration),amplifier:$(amplifier),particle:$(particle),id:$(id)}


execute if score #skip rMath matches 1 run return fail

scoreboard players remove #search menu.layer 1

execute on vehicle on passengers if predicate _main_:search_menu_layer run function _main_:hub/menu/buttons/close
scoreboard players remove @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 2

function _main_:hub/menu/buttons/effects/main

scoreboard players add @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 1

scoreboard players add #search menu.layer 1

