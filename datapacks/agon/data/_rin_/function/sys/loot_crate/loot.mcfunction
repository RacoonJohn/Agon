
$loot spawn ~ ~0.5 ~ loot $(loot)


execute on passengers if entity @s[type=interaction] run function _rin_:sys/loot_crate/reset_interaction

tag @s add _rin_sys_checkDelay

scoreboard players operation @s _rin_timer_date = #gametime _rin_global


data modify entity @s billboard set value "vertical"

data modify entity @s transformation merge value {left_rotation:[0,1,0,0],scale:[0.5,0.5,0.5],translation:[0,1.5,0]}

data modify entity @s start_interpolation set value -1

execute on passengers run data modify entity @s response set value 0b
execute on passengers if entity @s[type=interaction] run data merge entity @s {width:0,height:0}