
$execute if data storage math:data game_selected.preset[{id:$(preset_selected),invincible:1b}] run return run function _main_:hub/menu/buttons/presets/cant_delete

$data remove storage math:data game_selected.preset[{id:$(preset_selected)}]

function _main_:hub/menu/buttons/close_layer
function _main_:hub/menu/buttons/presets/main


execute as @e[tag=presetSelector,scores={menu.id=1}] run function _main_:hub/menu/function/preset_select




