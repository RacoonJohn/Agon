

scoreboard players operation #search _rin_global_playerID = @s _rin_global_ownerID

scoreboard players operation #search menu.layer = @s menu.layer

execute on passengers if entity @s[type=interaction] run function _main_:hub/menu/interaction

execute unless entity @a[predicate=_main_:search_id,scores={gameID=0}] run function _main_:hub/menu/buttons/close


tag @s add sd.plane
execute as @a[predicate=_main_:search_id] at @s anchored eyes positioned ^ ^ ^0.001 run function sd:api/plane_coord
tag @s remove sd.plane

#tellraw @a {score:{name:"SD.dx",objective:"rMath"}}
#tellraw @a {score:{name:"SD.dy",objective:"rMath"}}

function _main_:hub/menu/choice_close

scoreboard players set #break rMath 0
execute if predicate _main_:timer_end on passengers if entity @s[tag=button,tag=!selected] if predicate _main_:search_menu_layer if function _main_:hub/menu/check/coord run scoreboard players set #break rMath 1
execute if score #break rMath matches 0 on passengers run tag @s remove select



execute store result score #search menu.id run data get storage math:data game_selected.map.selected
scoreboard players set #break rMath 0
execute on passengers if entity @s[tag=button,tag=mapSelector,predicate=_main_:search_menu_id,tag=!selected] if function _main_:hub/menu/display/selected run scoreboard players set #break rMath 1
#execute if score #break rMath matches 0 on passengers run tag @s[tag=mapSelector] remove selected

execute store result score #search menu.id run data get storage math:data game_selected.id
scoreboard players set #break rMath 0
execute on passengers if entity @s[tag=button,tag=gameSelector,predicate=_main_:search_menu_id,tag=!selected] if function _main_:hub/menu/display/selected run scoreboard players set #break rMath 1
#execute if score #break rMath matches 0 on passengers run tag @s[tag=gameSelector] remove selected

execute store result score #search menu.id run data get storage math:data game_selected.preset_selected
scoreboard players set #break rMath 0
execute on passengers if entity @s[tag=button,tag=presetSelector,predicate=_main_:search_menu_id,tag=!selected] if function _main_:hub/menu/display/selected run scoreboard players set #break rMath 1

execute as @e[tag=label,distance=..1] run data modify entity @s text set from entity @s data.label
 


execute on passengers if entity @s[tag=!base,tag=!select,tag=!selected,tag=!clicked] run function _main_:hub/menu/display/base

execute on passengers run tag @s remove clicked


