$execute on passengers run data modify entity @s text set value {atlas:"gui",sprite:"mob_effect/$(id)",object:"atlas"}

$execute unless data storage math:data effects_selected."$(id)" run return fail

data modify entity @s background set value -1519622562


#data modify entity @s background set value -841555754
