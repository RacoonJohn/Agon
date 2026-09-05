function _main_:games/global/player/impulse/horizontal


execute rotated as @s positioned 0. 0. 0. positioned ^ ^ ^1 run function dapvp:system/get_pos

execute store result score #dx rMath run data get storage dapvp:math Pos[0] 10000
execute store result score #y fptrick_impulse run data get storage dapvp:math Pos[1] 13000
execute store result score #dz rMath run data get storage dapvp:math Pos[2] 10000


scoreboard players set #dy rMath 0
execute if predicate _main_:input/jump store result score #dy rMath run data get entity @s Motion[1] -10000

scoreboard players operation #x fptrick_impulse += #dx rMath
scoreboard players operation #y fptrick_impulse += #dy rMath
scoreboard players operation #z fptrick_impulse += #dz rMath

function fptrick_impulse:launch_global

return 1
