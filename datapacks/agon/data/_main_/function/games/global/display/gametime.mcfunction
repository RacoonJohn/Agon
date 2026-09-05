
scoreboard players operation Math.In0 rMath = #gametime2 rMath

function math:convert/tick_to_mmss
data modify storage _rin_:intern display.temp set value [{text:" ",bold:true},{nbt:"out.min",storage:"math:data",color:"text",interpret:true},{text:":",color:"text-muted"},{nbt:"out.sec",storage:"math:data",color:"text",interpret:true}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp
