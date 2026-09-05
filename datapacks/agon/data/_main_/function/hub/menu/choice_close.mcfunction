
execute if score #click rMath matches 1 unless score SD.dx rMath matches -2000..2000 as @a[predicate=_main_:search_id] if items entity @s weapon.mainhand *[custom_data~{item:"menu"}] run return run function _main_:hub/player/menu
execute if score #click rMath matches 1 unless score SD.dy rMath matches 0..2000 as @a[predicate=_main_:search_id] if items entity @s weapon.mainhand *[custom_data~{item:"menu"}] run return run function _main_:hub/player/menu
