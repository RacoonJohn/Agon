tag @s add smoke

data modify entity @s equipment.body set value {id:"light_gray_concrete",count:1}
data modify entity @s fuse set value 30

effect give @s invisibility infinite 255 true

attribute @s scale base set 0.3
attribute @s friction_modifier modifier add smoke 4 add_value
attribute @s air_drag_modifier modifier add smoke 6 add_multiplied_total
attribute @s bounciness modifier add smoke 0.3 add_multiplied_total


execute positioned .0 .0 .0 positioned ^ ^ ^1 run function dapvp:system/get_pos

execute store result entity @s Motion[0] double 0.001 run data get storage dapvp:math Pos[0] 1000
execute store result entity @s Motion[1] double 0.001 run data get storage dapvp:math Pos[1] 1000
execute store result entity @s Motion[2] double 0.001 run data get storage dapvp:math Pos[2] 1000
