
function _main_:hub/menu/display/get_scale


execute store result entity @s transformation.scale[0] float 0.0015 run scoreboard players get #temp menu.dx
execute store result entity @s transformation.scale[1] float 0.0015 run scoreboard players get #temp menu.dy
execute store result entity @s transformation.scale[2] float 0.0015 run scoreboard players get #temp menu.dz

tag @s remove select
tag @s add clicked

playsound ui.button.click neutral @a[predicate=_main_:search_id] ~ ~ ~
