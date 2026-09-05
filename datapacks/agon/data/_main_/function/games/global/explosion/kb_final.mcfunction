tag @s add explosed

execute facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run function dapvp:system/get_pos

execute store result score #x fptrick_impulse run data get storage dapvp:math Pos[0] 15000
execute store result score #y fptrick_impulse run data get storage dapvp:math Pos[1] 10000
execute store result score #z fptrick_impulse run data get storage dapvp:math Pos[2] 15000

scoreboard players operation #x fptrick_impulse *= #knockback rMath
scoreboard players operation #y fptrick_impulse *= #knockback rMath
scoreboard players operation #z fptrick_impulse *= #knockback rMath

scoreboard players operation #x fptrick_impulse /= #1000 rMath
scoreboard players operation #y fptrick_impulse /= #1000 rMath
scoreboard players operation #z fptrick_impulse /= #1000 rMath


execute if predicate dapvp:system/is_player run return run function fptrick_impulse:launch_global


execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #x fptrick_impulse
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #y fptrick_impulse
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #z fptrick_impulse


