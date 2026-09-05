



data modify storage math:data game_selected.preset append from storage math:data game_selected.preset[0]

data modify storage math:data game_selected.preset[-1].invincible set value 0b

execute store result score #test rMath run data get storage math:data game_selected.preset_count
scoreboard players add #test rMath 1
execute store result storage math:data game_selected.preset_count int 1 run scoreboard players get #test rMath
data modify storage math:data game_selected.preset[-1].id set from storage math:data game_selected.preset_count
data modify storage math:data game_selected.preset_selected set from storage math:data game_selected.preset_count

data modify storage math:data game_selected.preset[-1].name set value [{text:"Preset n°"},{text:""}]
data modify storage math:data game_selected.preset[-1].name[1].text set string storage math:data game_selected.preset_count

function _main_:hub/menu/function/save_preset with storage math:data preset_selected

data modify storage math:data preset_selected set from storage math:data game_selected.preset[-1]


function _main_:hub/menu/buttons/new_preset/edit
