function _rin_:api/time/tick_to_ssmm

data modify storage _rin_:intern display.temp set value [{color:"",nbt:"time.mm",storage:"_rin_:out"},":",{nbt:"time.ss",storage:"_rin_:out"}]

execute if score #time _rin_global matches ..79 run data modify storage _rin_:intern display.temp[0].color set value "danger"
execute if score #time _rin_global matches 80..219 run data modify storage _rin_:intern display.temp[0].color set value "warning"
execute if score #time _rin_global matches 220.. run data modify storage _rin_:intern display.temp[0].color set value "text-muted"

function _rin_:sys/style/change_color

data modify entity @s text set from storage _rin_:intern display.temp
