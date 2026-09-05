tag @s remove _rin_sys_this


data modify entity @s Tags append from storage _rin_:in Tags[]


data modify entity @s item set from storage _rin_:in item
data modify entity @s data.loot set from storage _rin_:in loot

scoreboard players operation @s _rin_timer_date = #date _rin_global
scoreboard players operation @s _rin_timer_delay = #delay _rin_global


data modify entity @s interpolation_duration set value 5
execute on passengers run data modify entity @s interpolation_duration set value 5

function _rin_:sys/loot_crate/check_delay

