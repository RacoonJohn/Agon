scoreboard players operation #search _rin_global_playerID = @s _rin_global_ownerID
scoreboard players operation #search gameID = @s gameID

ride @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] mount @s

attribute @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] entity_interaction_range modifier add cancel -10000 add_value
attribute @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] block_interaction_range modifier add cancel -100000 add_value
attribute @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] attack_damage modifier add cancel -100000 add_value


scoreboard players operation #temp rMath = @s date
scoreboard players operation #temp rMath -= #gametime rMath


data modify storage _rin_:intern display.temp set value {text:" ",color:"info"}

execute if score #temp rMath matches 199 run data modify storage _rin_:intern display.temp.text set value "10"
execute if score #temp rMath matches 179 run data modify storage _rin_:intern display.temp.text set value "9"
execute if score #temp rMath matches 159 run data modify storage _rin_:intern display.temp.text set value "8"
execute if score #temp rMath matches 139 run data modify storage _rin_:intern display.temp.text set value "7"
execute if score #temp rMath matches 119 run data modify storage _rin_:intern display.temp.text set value "6"
execute if score #temp rMath matches 99 run data modify storage _rin_:intern display.temp.text set value "5"
execute if score #temp rMath matches 79 run data modify storage _rin_:intern display.temp.text set value "4"
execute if score #temp rMath matches 59 run data modify storage _rin_:intern display.temp.text set value "3"
execute if score #temp rMath matches 39 run data modify storage _rin_:intern display.temp.text set value "2"
execute if score #temp rMath matches 19 run data modify storage _rin_:intern display.temp.text set value "1"
execute if score #temp rMath matches ..0 run data modify storage _rin_:intern display.temp.text set value ""


execute if score #temp rMath matches ..0 run attribute @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] entity_interaction_range modifier remove cancel
execute if score #temp rMath matches ..0 run attribute @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] block_interaction_range modifier remove cancel
execute if score #temp rMath matches ..0 run attribute @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] attack_damage modifier remove cancel


function _rin_:sys/style/change_color


execute if predicate _main_:timer_second as @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] at @s run playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 0.3 0.7 0

title @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] times 0 21 0
title @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] subtitle ""
execute if score #temp rMath matches 2.. run title @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id,tag=organize] subtitle {text:"organize your inventory",color:gray}
execute if predicate _main_:timer_second unless data storage _rin_:intern display.temp{text:""} run title @a[limit=1,predicate=_main_:search_game,predicate=_main_:search_id] title {nbt:"display.temp",storage:"_rin_:intern",interpret:true}


