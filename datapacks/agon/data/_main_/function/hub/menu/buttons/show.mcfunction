#data modify entity @s view_range set value 10f
#execute on passengers run data modify entity @s view_range set value 10f

data modify entity @s brightness set value {block:15,sky:15}
execute on passengers run data modify entity @s brightness set value {block:15,sky:15}

execute on passengers run kill @s[tag=hide_cross]

tag @s remove hidden