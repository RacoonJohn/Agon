
execute on passengers if entity @s[type=text_display] run data modify entity @s text set value ""

tag @s remove _rin_sys_checkDelay


data modify entity @s billboard set value "fixed"

data modify entity @s transformation merge value {left_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,0.5,0]}

data modify entity @s start_interpolation set value -1

execute on passengers run data modify entity @s response set value 1b
execute on passengers if entity @s[type=interaction] run data merge entity @s {width:1,height:1}