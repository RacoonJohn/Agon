
execute if score #temp _rin_global matches 10.. store result storage _rin_:intern str int 1 run scoreboard players get #temp _rin_global
execute if score #temp _rin_global matches 10.. run return run data modify storage _rin_:intern str set string storage _rin_:intern str


execute if score #temp _rin_global matches 0 run return run data modify storage _rin_:intern str set value "00"
execute if score #temp _rin_global matches 1 run return run data modify storage _rin_:intern str set value "01"
execute if score #temp _rin_global matches 2 run return run data modify storage _rin_:intern str set value "02"
execute if score #temp _rin_global matches 3 run return run data modify storage _rin_:intern str set value "03"
execute if score #temp _rin_global matches 4 run return run data modify storage _rin_:intern str set value "04"
execute if score #temp _rin_global matches 5 run return run data modify storage _rin_:intern str set value "05"
execute if score #temp _rin_global matches 6 run return run data modify storage _rin_:intern str set value "06"
execute if score #temp _rin_global matches 7 run return run data modify storage _rin_:intern str set value "07"
execute if score #temp _rin_global matches 8 run return run data modify storage _rin_:intern str set value "08"
execute if score #temp _rin_global matches 9 run return run data modify storage _rin_:intern str set value "09"

