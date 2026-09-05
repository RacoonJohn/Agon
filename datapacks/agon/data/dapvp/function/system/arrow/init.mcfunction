tag @s add dapvp.system.arrow



execute on origin rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function dapvp:system/get_pos


data modify storage dapvp:math Motion set from entity @s Motion

execute store result score #in0 dapvp.math run data get storage dapvp:math Motion[0] 10000
execute store result score #temp dapvp.math run data get storage dapvp:math Motion[1] 10000
execute store result score #temp2 dapvp.math run data get storage dapvp:math Motion[2] 10000

scoreboard players operation #in0 dapvp.math *= #in0 dapvp.math
scoreboard players operation #temp dapvp.math *= #temp dapvp.math
scoreboard players operation #temp2 dapvp.math *= #temp2 dapvp.math

scoreboard players operation #in0 dapvp.math += #temp dapvp.math
scoreboard players operation #in0 dapvp.math += #temp2 dapvp.math
execute store result score #m dapvp.math run function dapvp:system/sqrt

execute on origin rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function dapvp:system/get_pos

execute store result score #x dapvp.math run data get storage dapvp:math Pos[0] 1000
execute store result score #y dapvp.math run data get storage dapvp:math Pos[1] 1000
execute store result score #z dapvp.math run data get storage dapvp:math Pos[2] 1000

execute store result storage dapvp:math Motion[0] double 0.0000001 run scoreboard players operation #x dapvp.math *= #m dapvp.math
execute store result storage dapvp:math Motion[1] double 0.0000001 run scoreboard players operation #y dapvp.math *= #m dapvp.math
execute store result storage dapvp:math Motion[2] double 0.0000001 run scoreboard players operation #z dapvp.math *= #m dapvp.math

data modify entity @s Motion set from storage dapvp:math Motion
