

execute if predicate dapvp:system/on_ground rotated as @s rotated ~ 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^-0.9 run function dapvp:system/get_pos
execute unless predicate dapvp:system/on_ground rotated as @s rotated ~ ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^-0.65 run function dapvp:system/get_pos


execute store result score #x fptrick_impulse run data get storage dapvp:math Pos[0] 10000
execute store result score #y fptrick_impulse run data get storage dapvp:math Pos[1] 10000
execute store result score #z fptrick_impulse run data get storage dapvp:math Pos[2] 10000

function fptrick_impulse:launch_global


tag @s remove dapvp.back_kb