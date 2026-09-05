
attribute @s gravity modifier remove hover_dripleaf
execute if items entity @s[predicate=!_main_:flag/on_ground] weapon.* *[custom_data~{item:"hover_dripleaf"}] run return run function _main_:games/global/player/items/dripleaf/hover


execute if items entity @s[predicate=_main_:flag/on_ground] weapon.* *[custom_data~{item:"hover_dripleaf"}] run function _main_:games/global/player/items/dripleaf/restore



