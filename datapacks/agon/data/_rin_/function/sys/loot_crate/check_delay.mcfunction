
execute if predicate _rin_:sys/interact on passengers if entity @s[type=interaction] run function _rin_:sys/loot_crate/reset_interaction


scoreboard players operation #time _rin_global = @s _rin_timer_date
scoreboard players operation #time _rin_global += @s _rin_timer_delay

scoreboard players operation #time _rin_global -= #gametime _rin_global
execute if score #time _rin_global matches ..0 run return run function _rin_:sys/loot_crate/set
 
scoreboard players add #time _rin_global 20
execute on passengers if entity @s[type=text_display] run function _rin_:sys/loot_crate/timer


