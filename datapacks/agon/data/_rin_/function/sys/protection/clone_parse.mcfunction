$data modify storage _rin_:intern macro.coord set value "$(x) $(y) $(z) $(x2) $(y2) $(z2) ~ ~ ~"

execute store result storage _rin_:intern macro.size int 1 run scoreboard players get #size _rin_global
