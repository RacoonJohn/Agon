
data modify block -9941 1 -10002 front_text.messages[0] set from storage math:data preset_selected.name

execute as @a[predicate=_main_:search_id] run function _main_:hub/menu/function/preset_edit/name_player

